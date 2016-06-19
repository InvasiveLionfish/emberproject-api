module Api
  module V1
    class UsersController < ApplicationController
    skip_before_action :authenticate, only: [:create]
    skip_before_filter :verify_authenticity_token

      def create
        user = User.new(user_params)
        if user.save
          render json: {}, status: 200
        else
          render json: ErrorSerializer.serialize(user.errors), status: 422
        end
      end

      private

      def user_params
        ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:name, :email, :password, :description, :address, "phone-number", :type])
      end

    end
  end
end
