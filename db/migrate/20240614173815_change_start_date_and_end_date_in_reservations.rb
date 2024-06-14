class ChangeStartDateAndEndDateInReservations < ActiveRecord::Migration[7.1]
  def change
    remove_column :reservations, :start_date
    remove_column :reservations, :end_date
    add_column :reservations, :start_date, :date
    add_column :reservations, :end_date, :date
  end
end
