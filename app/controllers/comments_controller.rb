class CommentsController < ApplicationController

    def index 
        comments = Comment.all
        render json: comments 
    end

    def create 
        comment = Comment.new(comment_params)

        if comment.save 
            render json: comment 
        else 
            render json: {errors: comment.errors.full_messages}, status: :unprocessable_entity
        end
    end

    def destroy 
        comment = Comment.find(params[:id]) 
        comment.destroy
    end

    private 

        def comment_params
            params.require(:comment).permit(:content, :item_id)
        end
end
