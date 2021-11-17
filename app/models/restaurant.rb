class Restaurant < ApplicationRecord
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :phone_number
      t.string :adress
      t.integer :stars
      
      t.timestamps
    end
end
