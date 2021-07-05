class PostsController < ApplicationController
  layout "three_column"
  def index
    @all_posts = Post.all
		@all_users = User.all
  end
  def new
		@new_post = Post.create(post_params)
		redirect_to posts_path
	end
	private
		def post_params
			params.require(:post).permit(:title, :content, :user_id)
		end
	
end
