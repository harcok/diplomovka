class ShopController < ApplicationController
  before_filter :najdi_kosik, :except => :vyprazdni_kosik
  
  def index
    @products = Product.najdi_produkty_na_predaj
    @kosik = najdi_kosik
  end
 
  def pridaj_do_kosika
    begin
      product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error("Pokus o pristup k neplatnemu produktu #{params[:id]}")
      presmeruj_na_index("Neplatny produkt")
    else    
    @kosik = najdi_kosik
    @aktualna_polozka = @kosik.pridaj_produkt(product)
    if request.xhr?
      respond_to { |format| format.js }
    end
    end
  end
  
   def odober_z_kosika
    begin
      product = Product.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error("Pokus o prístup k neplatnému produktu #{params[:id]}")
      presmeruj_na_index("Neplatný produkt")
    else    
    @kosik = najdi_kosik
    @aktualna_polozka = @kosik.odober_produkt(produkt)
    if request.xhr?
      respond_to { |format| format.js }
    end
    end
  end
  
  
  def vyprazdni_kosik  # zmaže session a presmeruje na index
    session[:kosik] = nil
    presmeruj_na_index
  end
  
  def objednaj
    if @kosik.polozky.empty?
      presmeruj_na_index("Tvoj košík je prázdny.")
    else
      @order = Order.new
    end
  end
  

  def uloz_objednavku
    
    @kosik = najdi_kosik
    @order = Order.new(params[:order])
    @order.pridaj_polozky_objednavky(@kosik)
     if @order.save
        session[:kosik] = nil
        presmeruj_na_index("Vdaka za objednavku" )
     else
      render :action => :objednaj
    end
  end
 
  
protected
  def autorizuj
  end  
  
private
  def najdi_kosik  # shopping cart
      @kosik = (session[:kosik] ||= Kosik.new)
  end
  
  def presmeruj_na_index(sprava = nil)
    flash[:sprava] = sprava if sprava
    redirect_to :action => :index
  end

end