module Api
  module V1
    class ProjectsController < ApiController
      before_action :authorize_access_request!
      before_action :load_and_authorize_resource, only: %i[show update destroy]

      def index
        render json: ProjectSerializer.new(policy_scope(Project)).serialized_json, status: :ok
      end

      def show
        render json: ProjectSerializer.new(@project).serialized_json, status: :ok
      end

      def create
        project = authorize(current_user.projects.new(project_params))
        project.save!
        render json: ProjectSerializer.new(project).serialized_json, status: :created
      end

      def update
        @project.update!(project_params)
        render json: ProjectSerializer.new(@project).serialized_json, status: :created
      end

      def destroy
        @project.destroy
        head :no_content
      end

      private

      def project_params
        params.require(:project).permit(:name)
      end
    end
  end
end
