class Order < ApplicationRecord
  belongs_to :campaign
  belongs_to :user
  enum status: [:pending, :paid, :canceled]
end
