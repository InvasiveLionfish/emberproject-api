module Api
  module V1
    class ListingsController < ApplicationController
      skip_before_action :authenticate

      def index
        render json: Listing.includes(:donor), include: ['donor']
      end
    end
  end
end
