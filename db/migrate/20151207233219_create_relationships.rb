class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.belongs_to :doctor, null: false
      t.belongs_to :patient, null: false
    end
  end
end
