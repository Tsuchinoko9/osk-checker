class FavoritesController < ApplicationController

  def index
    if user_signed_in?
    @favorites = current_user.favorites
    favorite_check
    @update_favorites = Favorite.where(update_check: "yes").order(:priority_order)
    @no_update_favorites = Favorite.where(update_check: "no").order(:priority_order)
    end
  end

  def new
    @favorite = Favorite.new
    @existing_priority_order = Favorite.pluck(:priority_order)
    
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end


private

def favorite_params
  params.require(:favorite).permit(:url, :name, :priority_order, :update_check)
        .merge(user_id: current_user.id, content: "nothing")
end

def favorite_check
  require 'nokogiri'
  require 'open-uri'
  
  # favoriteごとに対して前回のコンテンツと最新のコンテンツをチェック
  @favorites.each do |favorite|
      # 最新のコンテンツ
      latest_content = Nokogiri::HTML(URI.open(favorite.url))
      # 前回のコンテンツ
      previous_content = favorite.content  #登録直後のfavorite.contentの値は「"nothing"」と設定

      if latest_content.to_s != previous_content.to_s
        # 登録直後の場合、または更新を確認した(前回のコンテンツと何らかの違いがあった)場合の処理
        favorite.update(update_check: "yes")
        favorite.update(content: latest_content.to_s)
      else
        favorite.update(update_check: "no")
      end
  end
end