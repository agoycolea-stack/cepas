class EnologistsController < ApplicationController
  before_action :set_enologist, only: [:show,:edit,:update,:destroy]

  def new
    @enologist = Enologist.new
  end

  def create
  end

  def index
    @enologists = Enologist.all.order(:age)
  end


  def edit
  end

  def update
  end

  def destroy
    @enologist.destroy
    respond_to do |format|
      format.html { redirect_to enologists_url, notice: 'Enologist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_enologist
    @wine = Wine.find(params[:id])
  end

  def enologist_params
    params.require(:enologist).permit(:name)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enologist
      @enologist = Enologist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enologist_params
      params.require(:enologist).permit(:name, :age, :nationality, 
      positions_attributes[:magazine_id, :name, :enologist_id])
    end


end
