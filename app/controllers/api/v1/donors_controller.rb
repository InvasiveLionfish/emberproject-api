module Api
  module V1
    class DonorsController < ApplicationController
      def index
        render json: Donor.includes(:listings), include: ['listings']
      end
    end
  end
end
