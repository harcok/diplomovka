class Product < ActiveRecord::Base
  has_many :order_items
  has_many :orders, :through => :order_items
  
#overovanie zadanych hodnot
  
  validates_presence_of :nazov, :popis, :obrazok_url
  validates_numericality_of :cena
  validate :cena_vacsia_ako_nula
  validates_uniqueness_of :nazov, :message => "Zadany nazov uz existuje!"
  validates_format_of :obrazok_url, 
                        :with   =>%r{\.(gif|jpg|png)$}i,
                        :message => 'musi byt URL adresa pre .gif' +
                        ', .jpg alebo .png obrazok'  
#metody
 
  def self.najdi_produkty_na_predaj
    find(:all, :order => "nazov")
  end
  
 protected
  def cena_vacsia_ako_nula
    errors.add(:cena, 'musi byt vacsia ako 0') if cena.nil? || cena <= 0 
  end
end

