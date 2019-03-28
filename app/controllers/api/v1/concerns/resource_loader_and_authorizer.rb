module Api::V1::Concerns
  module ResourceLoaderAndAuthorizer
    extend ActiveSupport::Concern

    included do
      def load_and_authorize_resource
        load_resource
        authorize_resource
      end
    end

    private

    def load_resource
      @resource = ResourceFinderService.call(controller_name, params)
      instance_variable_set(:"@#{@resource.name}", @resource.record)
    end

    def authorize_resource
      authorize(@resource.record)
    end
  end
end
