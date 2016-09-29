class Transaction < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :asset
  # after_create :set_transaction_history

  # def set_transaction_history
  #   transaction_history = History.create(description: self.title, date_history: Time.now, asset_id)  
  # end
end