class CategorySerializer < ActiveModel::Serializer
  attributes :bilevel_partition

  def bilevel_partition
    { name: "flare",
      children: [
        name,
        children
      ]
    }
  end

  def name
    object.large
  end

  def children
    [
      { name: object.middle },
      grandchildren
    ]
  end

  def grandchildren
    { children: 
      object.products
      .order(favorite_count: :desc)
      .limit(10)
      .select('id', 'favorite_count')
    }
  end
end
