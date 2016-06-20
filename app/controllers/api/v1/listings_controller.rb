module Api
  module V1
    class ListingsController < ApplicationController
      skip_before_action :authenticate

      def index
        render json: Listing.includes(:donor, :pickup), include: ['donor', 'pickup']
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

      def update
        listing = Listing.find(params[:id])
        listing.pickup = Pickup.create(recipient: current_user)
        if listing.save
          render json: listing
        end
      end

      private
        def listing_params
          ActiveModelSerializers::Deserialization.jsonapi_parse(params, only: [:description, "pickup-time"])
        end
    end
  end
end
