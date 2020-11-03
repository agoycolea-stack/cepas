class StrainsController < ApplicationController
  before_action :set_strain, only: [:show,:edit,:update,:destroy]

  def new
    @strain = Strain.new
  end

  def create
    @strain = Strain.new(strain_params)
    if @strain.save
      flash[:notice] = "Strain created successfully" 
      redirect_to new_strain_path     
    else
      flash[:danger]= "Error"
      render :new
    end
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

  def strain_params
    params.require(:strain).permit(:name)
  end

end
