class MenusController < ApplicationController
  def new
    @menu = Menu.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to restaurant_menu_path(@menu)
    else
      render 'new', status: :unprocessable_entities
    end
  end
end

private

def menu_params
  params.require(:menu).permit(:name, :active, :date)
end
