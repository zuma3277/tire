class MaterialsController < ApplicationController

  def index
    @materials = Material.order(:name, :raw_material)
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(material_params)
    if @material.save
      redirect_to materials_path, notice: '情報が登録されました'
    else
      render action: :new
    end
  end

  


  def destroy
    @material = Material.find(params[:id])
    @material.destroy
    redirect_to materials_path, notice: '情報が削除されました'

  end



  private

  def material_params
    params.require(:material).permit(:name, :raw_material,:weight,:start_day,:end_day).merge(user_id: current_user.id)
  end

end
