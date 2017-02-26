class Category < ApplicationRecord
  has_many :products, foreign_key: 'middle_category_name', primary_key: :middle
end
