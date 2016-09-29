class Asset < ActiveRecord::Base
  validates :name, presence: true
  has_many :transactions, dependent: :destroy
  has_many :histories, dependent: :destroy
  # after_create :set_asset_history

  # def set_asset_history
  #   asset_history = History.create(description: "Pembelian asset" self.name, date_history: Time.now, asset_id: self.id)  
  # end
end
