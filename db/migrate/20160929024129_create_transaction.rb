class CreateTransaction < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :title
      t.string :date_transaction
      t.decimal :price
      t.timestamps null:false
    end
  end
end
