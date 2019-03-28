class Users::FindService < ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    user = User.find_by!(email: @params[:email])
    raise JWTSessions::Errors::Unauthorized unless user.authenticate(@params[:password])

    user
  end
end
