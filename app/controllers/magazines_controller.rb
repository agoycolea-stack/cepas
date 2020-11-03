class MagazinesController < ApplicationController
  before_action :set_magazine, only: [:show,:edit,:update,:destroy]

  def new
  end

  def create
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def set_strain
    @wine = Wine.find(params[:id])
  end

  def magazine_params
    params.require(:magazine).permit(:name)
  end

end
