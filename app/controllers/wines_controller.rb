class WinesController < ApplicationController
  before_action :set_wine, only: [:show,:edit,:update,:destroy]
  def new

    @wine = Wine.new
    @strains = Strain.all
    @strains.each do |strain|
      @wine.assemblies.build(strain: strain)
    end
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      flash[:notice] = "Wine created successfully" 
      redirect_to wines_path     
    else
      flash[:danger]= "Error"
      render :new
    end
  end

  def index
    @wines = Wine.all
  end

  def edit
  end

  def update
  end

  def destroy
    @wine.destroy
    respond_to do |format|
      format.html { redirect_to strains_url, notice: 'Wine was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def set_wine
    @wine = Wine.find(params[:id])
  end
  def wine_params
    params.require(:wine).permit(:name,:price, assemblies_attributes: [:id, :strain_id, :wine_id, :percentage])
  end
end
