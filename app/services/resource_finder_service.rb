class ResourceFinderService < ApplicationService
  CONTROLLER_NAME_LAST_CHAR = 's'.freeze

  attr_reader :name, :record

  def initialize(controller_name, params)
    @params = params
    @controller_name = controller_name
  end

  def call
    @name = parsed_controller_name
    @record = finded_record
    self
  end

  private

  def parsed_controller_name
    @controller_name.chomp(CONTROLLER_NAME_LAST_CHAR)
  end

  def finded_record
    @name.capitalize.constantize.find(@params[:id])
  end
end
