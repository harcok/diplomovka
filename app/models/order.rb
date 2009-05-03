class Order < ActiveRecord::Base
    has_many :order_items
    
    TYPY_PLATENIA = [
      # Displayed stored in db
      [ "Hotovost" , "hotovost" ],
      [ "Platobna karta" , "karta" ],
      [ "Internet banking" , "ibanking" ]
    ]
    
    validates_presence_of :meno, :adresa, :email, :typ_platenia
    validates_inclusion_of :typ_platenia, :in => 
    TYPY_PLATENIA.map {|zobrazene, hodnota| hodnota}

  def pridaj_polozky_objednavky(kosik)
    kosik.polozky.each do |polozka|
    li = OrderItem.z_polozky_kosika(polozka)
    order_items << li
    end
  end
  
end
