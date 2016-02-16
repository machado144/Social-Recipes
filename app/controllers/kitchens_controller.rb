class KitchensController < ApplicationController
  before_action :set_kitchen, only: [:edit, :update, :show]

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

  def show
  end

  private

  def kitchen_params
    params.require(:kitchen).permit(:name)
  end

  def set_kitchen
    @kitchen = Kitchen.find(params[:id])
  end
end
