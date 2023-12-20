class RemoveTotalPriceToReservation < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :total_price
  end
end
