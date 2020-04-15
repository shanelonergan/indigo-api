class FavoritesController < ApplicationController

    def index
        render json: Favorite.all
    end

    def create
        favorite = Favorite.create(favorite_params)
        if favorite.valid?
            render json: favorite
        else
            render json: {errors: favorite.errors.full_messages}
        end
    end

    def destroy
        favorite = Favorite.find_by(user_id: favorite_params[:user_id], listing_id[:listing_id])
        favorite.destroy
    end

    private

    def favorite_params
        params.permit(
            :user_id,
            :listing_id
        )
    end

end
