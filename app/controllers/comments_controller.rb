class CommentsController < ApplicationController

    def create
        comment = Comment.create(create_params)
        if comment.valid?
            render json: comment
        else
            render json: comment.errors.full_messages
        end

    end

    private
    def create_params
        params.permit(:user_id, :post_id, :content)
    end

end
