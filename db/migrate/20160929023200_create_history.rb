class CreateHistory < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.text :description
      t.datetime :date_history
      t.integer :asset_id, index: true, null: false
      t.integer :transaction_id, index: true, null: false

      t.timestamps null: false
    end
  end
end
