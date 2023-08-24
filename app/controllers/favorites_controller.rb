class FavoritesController < ApplicationController
  def index
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
  params.require(:favorite).permit(:url, :name, :priority_order, :contents, :update_check)
        .merge(user_id: current_user.id)
end