class RemoveColumnTransactionIdFromHistories < ActiveRecord::Migration
  def change
    remove_column :histories, :transaction_id
  end
end
