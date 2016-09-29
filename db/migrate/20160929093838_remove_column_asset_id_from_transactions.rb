class RemoveColumnAssetIdFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :asset_id
  end
end
