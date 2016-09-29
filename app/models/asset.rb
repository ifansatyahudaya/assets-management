class Asset < ActiveRecord::Base
  validates :name, presence: true
  has_many :histrories, dependent: :destroy
end
