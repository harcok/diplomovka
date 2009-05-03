class OrderItem < ActiveRecord::Base
    belongs_to :order
    belongs_to :product
    
def self.z_polozky_kosika(polozka)
    li = self.new
    li.product = polozka.product
    li.mnozstvo = polozka.pocet
    li.celkova_cena = polozka.cena
    li
end

def vypis
  for item in @order_item
    put item.celkova_cena
  end
end
  
end
