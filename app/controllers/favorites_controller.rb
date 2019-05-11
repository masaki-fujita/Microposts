class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:user_id])
    current_user.postfollow(micropost)
    flash[:success] = "お気に入りに追加しました"
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:user_id])
    current_user.unpostfollow(micropost)
    flash[:success] = "お気に入りから外しました"
    redirect_to root_url
  end
end
