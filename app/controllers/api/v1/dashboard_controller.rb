class DashboardController < ApplicationController
  def index
    render json: { message: "Hello, #{@current_user.firstname} #{@current_user.lastname}!" }
  end
end