class Posts::SearchesController < ApplicationController
  def index
    @posts = Post.search(params[:keyword])
    respond_to :js
  end
end

