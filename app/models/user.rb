class User < ApplicationRecord
  has_many :purchase_logs
  has_many :products, through: :purchase_logs
end
