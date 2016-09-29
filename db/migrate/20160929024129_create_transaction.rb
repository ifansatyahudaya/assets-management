class CreateTransaction < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :title
      t.datetime :date_transaction
      t.decimal :price
      t.timestamps null:false
    end
  end
end
