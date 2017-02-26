class CategorySerializer < ActiveModel::Serializer
  attributes :id, :large, :children

  def children
    [
      { middle: object.middle },
      grandchildren
    ]
  end

  def grandchildren
    { children: 
      object.products.order(favorite_count: :desc).limit(10).select('id', 'favorite_count')
    }
  end
end
