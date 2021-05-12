class LikesController < ApplicationController

    def create
        like = Like.create(post_id: params[:post_id], user_id: params[:user_id])

        render json: like
    end

    def destroy
        Like.find(params[:id]).destroy
    end


    
end
