class PolozkaKosika 
  
  attr_reader :product, :pocet
  
  def initialize(product)
    @product = product
    @pocet = 1
  end
  
  def inkrementuj_pocet
    @pocet += 1
  end
  
  def dekrementuj_pocet
    @pocet -= 1
  end  
    
  def nazov
    @product.nazov
  end
  
  def cena
    @product.cena * @pocet
  end  
  
end