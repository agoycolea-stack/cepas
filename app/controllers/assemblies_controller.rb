class AssembliesController < ApplicationController
  before_action :set_assembly, only: [:show,:edit,:update,:destroy]
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
    @strain.destroy
    respond_to do |format|
      format.html { redirect_to strains_url, notice: 'Strain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def set_assembly
    @wine = Wine.find(params[:id])
  end
  def assembly_params
    params.require(:assembly).permit(:name)
  end
end
