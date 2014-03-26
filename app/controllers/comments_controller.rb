class CommentsController < ApplicationController
	respond_to :json

	def create
  	comment = Comment.new(comment_params)

  	if comment.save
  		render json: comment
  	else
  		render json: { errors: comment.errors.messages }, status: 422
  	end
  end

  private

  def comment_params
  	params.require(:comment).permit(:body, :post_id, :id)
  end
end
