class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :meno
      t.text :adresa
      t.string :email
      t.string :typ_platenia, :limit => 10
      t.float :celkova_cena
        
      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
