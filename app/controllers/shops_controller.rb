class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to root_path
    else
      render = :new
    end
  end

  def show
    @shop = Shop.find(params[:id])
    @lat = @shop.latitude
    @lng = @shop.longitude
    gon.lat = @lat
    gon.lng = @lng
  end

  private
  def shop_params
    params.require(:shop).permit(
      :name,
      :type_id,
      :prefecture_id,
      :address,
      :building_name,
      :feelings,
      :latitude,
      :longitude
    )
  end


end
