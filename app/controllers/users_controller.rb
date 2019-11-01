class UsersController < ApplicationController

    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    def create
        user = User.create(user_params)
        if user.valid?
            payload = {user_id: user.id}
            token = JWT.encode(payload, secret, true, {alogorithm: 'HS256'})
            render json: {user: user, token: token}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    private

    def user_params
        params.permit(:username, :password, :bio, :email)
    end
end
