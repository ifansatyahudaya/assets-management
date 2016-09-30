# == Schema Information
#
# Table name: transactions
#
#  id               :integer          not null, primary key
#  title            :string           not null
#  date_transaction :datetime
#  price            :decimal(, )
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Transaction < ActiveRecord::Base
  has_attached_file :attachment, styles: { thumb: "100x100>" }, default_url: "/images/noimagefound.jpg"
  do_not_validate_attachment_file_type :attachment

  validates :title, presence: true
end
