class Transaction < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :asset
end