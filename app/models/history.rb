# == Schema Information
#
# Table name: histories
#
#  id          :integer          not null, primary key
#  asset_id    :integer
#  description :string           not null
#  created_at  :datetime         not null
#

class History < ActiveRecord::Base
  belongs_to :asset

  validates :description, presence: true
  validates :date_history, presence: true
end
