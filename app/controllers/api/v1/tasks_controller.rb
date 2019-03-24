module Api
  module V1
    class TasksController < ApiController
      before_action :authorize_access_request!
      before_action :load_and_authorize_resource, only: %i[show update destroy]

      def index
        render json: TaskSerializer.new(policy_scope(Task)).serialized_json, status: :ok
      end

      def show
        render json: TaskSerializer.new(@task).serialized_json, status: :ok
      end

      def create
        task = authorize Task.new(task_params.merge(project_id: params[:project_id]))
        task.save!
        render json: TaskSerializer.new(task).serialized_json, status: :created
      end

      def update
        @task.update!(task_params)
        render json: TaskSerializer.new(@task).serialized_json, status: :created
      end

      def destroy
        @task.destroy
        head :no_content
      end

      private

      def task_params
        params.require(:task).permit(:name, :deadline, :complete, :position)
      end
    end
  end
end
