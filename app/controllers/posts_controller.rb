class PostsController < ApplicationController
	respond_to :json

	def index
    posts = Post.all.order(votes: :desc)
		render json: posts, each_serializer: PostSerializer
	end

	def show
		render json: Post.find(params[:id])
	end

	def create
  	post = Post.new(post_params)

  	if post.save
  		render json: post
  	else
  		render json: { errors: post.errors.messages }, status: 422
  	end
  end

  def update
  	post = Post.find(params[:id])

  	if post.update(post_params)
  		render json: post, status: :ok
  	else
  		render json: { errors: post.errors.messages }, status: 422
  	end
  end

  def destroy
  	post = Post.find(params[:id])

  	if post.destroy
  		render json: nil, status: :ok
  	else
  		render json: { errors: post.errors.messages }, status: 404
  	end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :votes, :id, comments: [:body, :post_id])
  end
end
