class RestaurantsController < ApplicationController

  # no controller ficam os metodos de ação
  # before_action :set_restaurant , only: %i[show edit update destroy]
  def index
    @restaurants = Restaurant.all
  end
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

end
