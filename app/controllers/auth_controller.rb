class AuthController < ApplicationController

    def login
        user = User.find_by(username: user_params[:username])
        if user && user.authenticate(user_params[:password])
            payload = {user_id: user.id}
            token = JWT.encode(payload, secret, true, {alogorithm: 'HS256'})
            render json: {user: user. token: token}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

   def persist
   end

    private

    def user_params
        params.permit(:username, :password, :bio, :email)
    end
end
