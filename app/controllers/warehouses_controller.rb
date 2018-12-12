class WarehousesController < ApplicationController
  def index
    @warehouse = Warehouse.new
    @warehouses = Warehouse.all
    filter(params) if !params[:warehouse].nil?
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:temperature, :rating, :capacity_sq_ft, :address)
  end

  def filter(params)
    @warehouses = Warehouse.all
    params = params[:warehouse]
    unless params[:address] == ""
      @warehouses = Warehouse.near(params[:address], 50)
    end
    params[:address] = nil
    params.each do |key, value|
      @warehouses = @warehouses.public_send(key, value) if value.present?
    end
    @warehouses
  end
end
