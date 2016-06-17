module Api
  module V1
    class ListingsController < ApplicationController
      def index
        render json: Listing.includes(:donor), include: ['donor']
      end
    end
  end
end
