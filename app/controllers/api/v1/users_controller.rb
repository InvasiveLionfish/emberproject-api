module Api
  module V1
    class UsersController < ApplicationController
      skip_before_action :authenticate, only: [:create]

      def create
        user = User.new(user_params)
        if user.save
          NewUserEmail.notify_user(user).deliver
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
        ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:description, "pickup-time"])
      end

    end
  end
end
