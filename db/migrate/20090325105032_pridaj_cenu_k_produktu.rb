class PridajCenuKProduktu < ActiveRecord::Migration
  def self.up
    add_column :products, :cena, :decimal,
    :precision => 8, :scale => 2, :default => 0
  end

  def self.down
    remove_column :products, :cena
  end
end
