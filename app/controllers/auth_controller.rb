class AuthController < ApplicationController

    def login
        user = User.find_by(username: user_params[:username])
        if user && user.authenticate(user_params[:password])
            payload = {user_id: user.id}
            token = JWT.encode(payload, secret, 'HS256')
            render json: {user: user, token: token}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def persist
        auth = request.headers["Authorization"]
        if auth
            token = auth.split(" ")[1]
            decoded_token = JWT.decode(token, secret, true, {alogorithm: 'HS256'})

            user = User.find(decoded_token[0]['user_id'])
            render json: user
        end
    end

    private

    def user_params
        params.permit(:username, :password, :bio, :email)
    end
end
