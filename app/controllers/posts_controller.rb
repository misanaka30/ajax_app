class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")
  end

  #def new
  #end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

  def checked
    post = Post.find(params[:id])　#id取得
    if post.checked
      post.update(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }#post: itemというデータをJSON形式でchecked.jsに返却
  end
end