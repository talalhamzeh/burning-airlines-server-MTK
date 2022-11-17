class AddNameToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations ,:name, :string
  end
end
