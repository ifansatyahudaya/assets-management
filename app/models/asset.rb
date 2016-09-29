class Asset < ActiveRecord::Base
  validates :name, presence: true
  has_many :transactions, dependent: :destroy
  has_many :histories, dependent: :destroy
end
