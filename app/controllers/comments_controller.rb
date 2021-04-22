class CommentsController < ApplicationController

    def index 
        render json: Comment.all 
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
        Comment.find(params[:id]).destroy 
    end

    private 

        def comment_params
            params.require(:comment).permit(:content, :item_id)
        end
end
