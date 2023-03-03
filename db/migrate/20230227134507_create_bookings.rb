class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :start_date
      t.integer :end_date
      t.boolean :accepted

      t.timestamps
    end
  end
end
