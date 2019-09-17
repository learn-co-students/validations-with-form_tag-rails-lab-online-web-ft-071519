class PostsController < ApplicationController
    before_action :find_post, only:[:show, :edit, :update]
    
    def new
        @post = Post.new
    end
    
    def show
        #before_action
    end

    def edit
        #before_action
    end

    def update
        #before_action
        if @post.update(post_params)
            redirect_to post_path(@post)
        else
            render :edit
        end
    end

    private

    def post_params
        params.permit(:title, :category, :content)
    end

    def find_post
        @post = Post.find_by(:id => params[:id])
    end
end
