class Product < ApplicationRecord
  has_many :purchase_logs
  has_many :users, through: :purchase_logs

  belongs_to :category, foreign_key: 'middle_category_name', primary_key: :middle_category_name

end
