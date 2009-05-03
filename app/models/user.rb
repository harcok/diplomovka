require 'digest/sha1'

class User < ActiveRecord::Base
  validates_presence_of :meno
  validates_uniqueness_of :meno

  attr_accessor :potvrdenie_hesla
  validates_confirmation_of :heslo
  validate :zadane_heslo
  
  def self.autentifikuj(meno, heslo)
  user = self.find_by_meno(meno)
    if user
      ocakavane_heslo = kryptovane_heslo(heslo, user.sol)
      if user.hashovane_heslo != ocakavane_heslo
        user = nil
      end
    end
  user
  end
  
  def po_zmazani  #zachranna metoda po zmazani posledneho usera
    if User.count.zero?
      raise "Nemozes zmazat posledneho pouzivatela"
    end
  end

  # atribut 'heslo' je virtualny atribut
  def heslo
    @heslo
  end
  
  def heslo=(pwd)
    @heslo = pwd
    return if pwd.blank?
    vytvor_novu_sol
    self.hashovane_heslo = User.kryptovane_heslo(self.heslo, self.sol)
  end

private 

  def zadane_heslo
    errors.add_to_base("Nezadali ste heslo" ) if hashovane_heslo.blank?
  end
  
  def vytvor_novu_sol  # premennu na kryptovanie hesla
    self.sol = self.object_id.to_s + rand.to_s
  end
  
  def self.kryptovane_heslo(heslo, sol)
    string_to_hash = heslo + "wibble" + sol
    Digest::SHA1.hexdigest(string_to_hash)
  end
  
end
