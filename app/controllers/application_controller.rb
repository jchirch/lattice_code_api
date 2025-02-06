class ApplicationController < ActionController::API
  before_action :authorize_request

  def authorize_request
    header = request.headers['Authorization']
    token = header.split(' ').last if header
    decoded = JsonWebToken.decode(token)

    if decoded && User.exists?(id: decoded[:user_id])
      @current_user = User.find(decoded[:user_id])
    else
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end
end