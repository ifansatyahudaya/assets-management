class AddColumnTransactionIdToHistories < ActiveRecord::Migration
  def change
    add_column :histories, :transaction_id, :integer
  end
end
