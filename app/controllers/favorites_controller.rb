class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @favorite = current_user.favorites.build(favorite_params)
    @post = @favorite.post
    if @favorite.save
      respond_to :js
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @post = @favorite.post
    if @favorite.destroy
      respond_to :js
    end
  end

  private
    def favorite_params
      params.permit(:user_id, :post_id)
    end
end
