class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :specialty, null: false
      t.string :city

      t.timestamp null: false
    end
  end
end
