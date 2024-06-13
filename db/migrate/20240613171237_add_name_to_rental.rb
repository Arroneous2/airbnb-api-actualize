class AddNameToRental < ActiveRecord::Migration[7.1]
  def change
    add_column :rentals, :name, :string
  end
end
