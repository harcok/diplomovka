class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :meno
      t.string :hashovane_heslo
      t.string :sol    #premenna ktorou budeme hashovat heslo

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
