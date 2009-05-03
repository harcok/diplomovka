class OrdersController < ApplicationController


  def index
    @orders = Order.find(:all)
    @items = OrderItem.find(:all)
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @order }
      format.xml  { render :xml => @items }
    end
  end

 # GET /orders/1
 # GET /orders/1.xml
  def show
    @order = Order.find(params[:id])
    @items = OrderItem.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.xml
  def new
    @order = Order.new
    @items = OrderItem.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @order }
    end
  end



  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to(orders_url) }
      format.xml  { head :ok }
    end
  end
end
