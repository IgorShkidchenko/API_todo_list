class ResourceFinderService < ApplicationService
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
    @controller_name.classify.downcase
  end

  def finded_record
    @name.capitalize.constantize.find(@params[:id])
  end
end
