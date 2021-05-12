class PostsController < ApplicationController

    def index
        posts = Post.all
        sorted_posts = posts.sort {|a, b| b.id <=> a.id }
        render json: sorted_posts
    end

    def show 
        post = Post.find(params[:id])
        if post
            render json: post
        else
            render json: {error: "Cannot find this post"}
        end
    end

    def create
        post = Post.create(post_params)
        if post.valid?
            render json: post
        else
            render json: post.errors.full_messages
        end
    end

    private

    def post_params
        params.permit(:title, :media_link, :media_type, :team1, :team2, :description, :user_id)
    end   

end
