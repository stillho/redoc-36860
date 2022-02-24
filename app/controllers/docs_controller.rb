class DocsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  
  def index
    @docs = Doc.all
  end

  def new
    @doc = Doc.new

  end

  def create
    @doc = Doc.new(doc_params)
    if @doc.save
      redirect_to root_path
    else
      render :new    
    end
  end

  def show
    @doc = Doc.find(params[:id])
    @comment = Comment.new
    @comments = @doc.comments.includes(:user)
  end

  def edit
    @doc = Doc.find(params[:id])
   unless user_signed_in? && current_user.id == @doc.user_id
      redirect_to action: :index
    end
  end

  def update
    @doc = Doc.find(params[:id])
      if @doc.update(doc_params)
       redirect_to doc_path
    else
      render :edit    
    end
  end

  def destroy
    @doc = Doc.find(params[:id])
    @doc.destroy
    redirect_to action: :index
  end
  
  private 

  def doc_params
   params.require(:doc).permit(:image, :title, :catch_copy, :concept, :comment).merge(user_id: current_user.id)
  end
  
end
