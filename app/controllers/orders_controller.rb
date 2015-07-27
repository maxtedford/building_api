class OrdersController < ApplicationController
  respond_to :html, :json, :xml
  
  def index
    @orders = Order.all
    
    respond_to do |format|
      format.html { @orders }
      format.json { render json: @orders }
      format.xml  { render xml:  @orders }
    end
    
    respond_with @orders
  end

  def show
    @order = Order.find(params[:id])
    
    respond_to do |format|
      format.html { @orders }
      format.json { render json: @order }
      format.xml  { render xml:  @order }
    end
    
    respond_with @order
  end
end
