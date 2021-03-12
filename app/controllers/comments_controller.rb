class CommentsController < ApplicationController

    


    def create
        comment = Comment.create(comments_params)
    end

    def comments
        comments = Comment.all.select{|post| post.character_comic_id == params[:id].to_i}
        # comments = Comment.where(character_comic_id: params[:id].to_i)
        render json: comments
    end 

    private 
    def comments_params
        params.require(:comment).permit(:character_comic_id, :name, :post)
    end
end
