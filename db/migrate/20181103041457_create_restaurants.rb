class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
