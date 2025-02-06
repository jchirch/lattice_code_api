# class AuthenticationController < ApplicationController
#   def login
#     user = User.find_by(email: params[:email])
#     if user && user.authenticate(params[:password])
#       token = user.generate_jwt
#       render json: { token: token, user: user }, status: :ok
#     else
#       render json: { error: 'Invalid email or password' }, status: :unauthorized
#     end
#   end
# end

module Api
  module V1
    class AuthenticationController < ApplicationController
      def login
        user = User.find_by(email: params[:email])

        if user && user.authenticate(params[:password])
          token = JsonWebToken.encode(user_id: user.id)
          render json: { token: token }, status: :ok
        else
          render json: { error: "Invalid credentials" }, status: :unauthorized
        end
      end
    end
  end
end