class CreateRentals < ActiveRecord::Migration[7.1]
  def change
    create_table :rentals do |t|
      t.integer :user_id
      t.string :address
      t.string :city
      t.string :state
      t.decimal :price, precision: 10, scale: 2
      t.string :description
      t.string :home_type
      t.string :rental_type
      t.integer :total_occupancy
      t.integer :total_bed_rentals
      t.integer :total_bathrooms

      t.timestamps
    end
  end
end
