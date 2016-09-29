class History < ActiveRecord::Base
  belongs_to :asset
  belongs_to :transaction
end