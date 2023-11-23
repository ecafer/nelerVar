class PostsController < ApplicationController

    def index
    end

    def new
    end

    def create
        @post = Post.new(post_params)
    
        if @post.save
          redirect_to root_path, notice: 'Post was successfully created.'
        else
          render :new
        end
    end
    
    private
    def post_params
        params.permit(:title, :body)
    end
end
