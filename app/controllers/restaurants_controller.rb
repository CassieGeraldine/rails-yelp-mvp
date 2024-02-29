class RestaurantsController < ApplicationController
  #bcoz we identify all these 4 actions using their id.
  before_action :set_restaurant, only: %i[ show edit update destroy ]

  def index
    @restaurants = Restaurant.all
  end

    # GET /restaurants/new
    def new
      @restaurant = Restaurant.new
    end

     # POST /restaurants
  def create
    @restaurant = Restaurant.new(review_params) #strong params.

    if @restaurant.save
      redirect_to restaurants_path(@restaurant), notice: "Restaurant was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end



  # GET /restaurant/1
  def show
  end

   # GET /restaurants/1/edit
   def edit
   end

   private
  # share common actions. (call backs)
   def set_restaurant
    @restaurant = Restaurant.find(params[:id])
   end

   #strong params defined here, only allow trusted parameters through.
  def review_params
    params.require(:review).permit(:name, :address,:phone_number,:category)
  end


end
