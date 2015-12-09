class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :location, null: false
      t.date :date, null: false
      t.string :timeslot, null: false

      t.timestamp null: false
    end
  end
end
