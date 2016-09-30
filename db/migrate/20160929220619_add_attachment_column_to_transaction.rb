class AddAttachmentColumnToTransaction < ActiveRecord::Migration
  def up
    add_attachment :transactions, :attachment
  end

  def down
    remove_attachment :transactions, :attachment
  end
end
