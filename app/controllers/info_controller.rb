class InfoController < ApplicationController
  def kto_kupil
    @product = Product.find(params[:id])
    @orders = @product.orders
    respond_to do |format|
    format.html
    format.xml {render :layout => false,
       :xml => @product.to_xml(:include => :orders) }
    end
  end

protected
  def autorizuj
  end  
  
end
