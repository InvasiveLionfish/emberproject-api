module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :authenticate, only: [:create]
      skip_before_action :verify_authenticity_token

      def create
        user = User.new(user_params)
        if user.save
          binding.pry
          NewUserEmail.notify_user(user).deliver_now
          render json: {data: {type: "users", user: {email: user.email, password: user.password}}}, status: 200
        else
          render json: {:errors=>
           [{:detail=>"error",
             :source=>{:pointer=>"user/err_type"}}
           ]}, status: 404
        end
      end

      def me
        render json: current_user
      end

      private

      def user_params
        ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:description, :email, :name, :password, :phone_number, :type, :address])
      end
    end
  end
end
