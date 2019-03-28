class Users::CreateService < ApplicationService
  def initialize(params)
    @params = params
  end

  def call
    user = User.new(@params)
    user.save!
    user
  end
end
