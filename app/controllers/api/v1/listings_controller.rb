module Api
  module V1
    class ListingsController < ApplicationController

      def index
        render json: Listing.includes(:donor), include: ['donor']
      end

      def create
        listing = Listing.new(listing_params)
        if listing.save
          current_user.listings << listing
          render json: listing
        else
          render json: {:errors=>
           [{:detail=>"error",
             :source=>{:pointer=>"user/err_type"}}
           ]}, status: 404
        end
      end

      private
        def listing_params
          ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:description, "pickup-time"])
        end
    end
  end
end
