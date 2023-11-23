class PostsController < ApplicationController

    def index
        @posts = Post.all
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

    def show
        @post = Post.find(params[:id])
    end
    
    private
    def post_params
        params.permit(:title, :body)
    end
end
