class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
     redirect_to doc_path(@comment.doc)
    else
      @doc = Doc.find(params[:doc_id])
      @comment = Comment.new
      @comments = @doc.comments.includes(:user)
     render "docs/show"
    end
  end

 private 

 def comment_params
  params.require(:comment).permit(:content, :comment).merge(user_id: current_user.id, doc_id: params[:doc_id])
 end 
end
