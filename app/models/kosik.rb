class Kosik
  attr_reader :polozky
  
  def initialize
    @polozky = []
  end
  
  def pridaj_produkt(product)
    aktualna_polozka = @polozky.find{|polozka| polozka.product == product}
    if aktualna_polozka
      aktualna_polozka.inkrementuj_pocet
    else  
      aktualna_polozka = PolozkaKosika.new(product)
      @polozky << aktualna_polozka
    end
    aktualna_polozka
  end    
  
  def odober_produkt (produkt)
    aktualna_polozka = @polozky.find{|polozka| polozka.product == product}
    if aktualna_polozka.pocet == 1
      aktualna_polozka.destroy
    else 
      aktualna_polozka.dekrementuj_pocet
    end
 end     
    
  def celkova_cena
    @polozky.sum { |polozka| polozka.cena }
  end
  
  def vsetky_polozky
    @polozky.sum {|polozka| polozka.pocet}
  end
  
  def vezmi_polozky_kosika
    polozky = []
    @polozky.each do |polozka|
      polozky << polozka.detaily
      end
      polozky
  end
  
  
end 