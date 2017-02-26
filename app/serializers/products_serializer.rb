class ProductsSerializer < ActiveModel::Serializer
  attributes :id, :favorite_count, :middle_category_name
end
