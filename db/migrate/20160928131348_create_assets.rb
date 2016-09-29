class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name, null: false
      t.datetime :purchase_date
      t.timestamps null: false
    end
  end
end
