class CommentsController < ApplicationController

    def create
        comment = Comment.create(comment_params)
        if comment.valid?
            render json: comment
        else
            render json: comment.errors.full_messages
        end

    end

    def update
        comment = Comment.find(params[:id])
        if comment.update(comment_params)
            render json: comment
        else 
            render json: comment.errors.full_messages
        end
    end

    def destroy
        Comment.find(params[:id]).destroy
    end



    private
    def comment_params
        params.permit(:user_id, :post_id, :content)
    end

end
