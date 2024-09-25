class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def italian
    @restaurants = Restaurant.where(category: :italian)
    render :index
  end

  def chinese
    @restaurants = Restaurant.where(category: :chinese)
    render :index
  end

  def french
    @restaurants = Restaurant.where(category: :french)
    render :index
  end

  def belgian
    @restaurants = Restaurant.where(category: :belgian)
    render :index
  end

  def japanese
    @restaurants = Restaurant.where(category: :japanese)
    render :index
  end

  def show
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :category, :address)
  end
end
