class Transaction < ActiveRecord::Base
  validates :title, presence: true
  # has_many :histories, dependent: :destroy
end