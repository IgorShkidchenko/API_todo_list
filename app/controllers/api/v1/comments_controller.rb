module Api
  module V1
    class CommentsController < ApiController
      include Concerns::ResourceLoaderAndAuthorizer

      before_action :authorize_access_request!
      before_action :load_and_authorize_resource, only: :destroy

      def index
        render json: CommentSerializer.new(policy_scope(Comment)).serialized_json, status: :ok
      end

      def create
        comment = authorize Comment.new(comment_params.merge(task_id: params[:task_id]))
        comment.save!
        render json: CommentSerializer.new(comment).serialized_json, status: :created
      end

      def destroy
        @comment.destroy
        head :no_content
      end

      private

      def comment_params
        params.require(:comment).permit(:body, :image)
      end
    end
  end
end
