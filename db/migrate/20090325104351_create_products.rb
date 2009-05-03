class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :nazov
      t.text :popis
      t.string :obrazok_url

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
