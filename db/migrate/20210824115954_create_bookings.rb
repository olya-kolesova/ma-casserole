class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :chef, null: false, foreign_key: true
      t.date :date
      t.time :start_hour
      t.time :end_hour

      t.timestamps
    end
  end
end
