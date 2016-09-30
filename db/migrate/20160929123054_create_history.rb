class CreateHistory < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :asset_id, index: true
      t.string :description, null: false
      t.datetime :date_history
    end
  end
end
