class CreateRentalImages < ActiveRecord::Migration[7.1]
  def change
    create_table :rental_images do |t|
      t.integer :rental_id
      t.string :url

      t.timestamps
    end
  end
end
