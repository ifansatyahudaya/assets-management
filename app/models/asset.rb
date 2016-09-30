# == Schema Information
#
# Table name: assets
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  purchase_date :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Asset < ActiveRecord::Base
  validates :name, presence: true

  has_many :histories, dependent: :destroy  
end
