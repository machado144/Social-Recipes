class KindsController < ApplicationController
  def new
    @kind = Kind.new
  end

  def create
    @kind = Kind.new(kind_params)
    if @kind.save
      redirect_to admin_index_path
    else
      render :new
    end
  end

  def index
    @kinds = Kind.all
  end

  private

  def kind_params
    params.require(:kind).permit(:name)
  end
end
