class ListingsController < ApplicationController
    def create
        listing = Listing.create(listing_params)
        if listing.valid?
            render json: listing
        else
            render json: {errors: listing.errors.full_messages}
        end
    end

    def index
        render json: Listing.all
    end

    private

    def listing_params
        params.permit(
            :name,
            :category_id,
            :brand_id,
            :waist,
            :length,
            :weight,
            :wash_id,
            :mill_id,
            :condition_id,
            :price)
    end
end
