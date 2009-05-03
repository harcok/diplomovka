class AdminController < ApplicationController
  def prihlasenie  #prihlasi pouzivatela
    session[:user_id] = nil
    if request.post?
      user = User.autentifikuj(params[:meno], params[:heslo])
      if user
        session[:user_id] = user.id
        uri = session[:original_uri]
        session[:original_uri] = nil
        redirect_to(uri || { :action => "index" })
      else
        flash.now[:sprava] = "Zadali ste neplatne pouzivatelske meno alebo heslo."
      end
    end
  end

  def odhlasenie  # odhlasi pouzivatela
    session[:user_id] = nil
    flash[:sprava] = 'Boli ste odhlaseni.'
    redirect_to(:action => :prihlasenie)
  end

  def index
    @vsetky_objednavky = Order.count
  end

end
