class SaleSerializer < ActiveModel::Serializer
  attributes :id, :gender, :age, :tab, :large_category, :middle_category, :acquisition_date, :favorite_count
end
