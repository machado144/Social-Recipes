class KitchensController < ApplicationController

  def index
    @kitchens = Kitchen.all
  end

  def new
    @kitchen = Kitchen.new
  end

  def create
    @kitchen = Kitchen.new(kitchen_params)
    if @kitchen.save
      redirect_to admin_index_path
    else
      render :new
    end
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:name)
  end

end
