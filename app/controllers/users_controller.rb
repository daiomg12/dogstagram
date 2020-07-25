class UsersController < ApplicationController
  def show

    @user = User.find(params[:id])
    @posts = @user.posts.includes(:photos, :likes, :comments)
    if @user == current_user
      @favorites =  Post.joins(:favorites).where("favorites.user_id=?", current_user.id).includes(:photos, :likes, :comments)
    end
  end
end
