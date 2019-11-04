class ListingSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :category, :wash, :mill, :condition, :waist, :length, :weight, :price

  def brand
    {name: self.object.brand.name, id: self.object.brand.id}
  end

  def category
    {name: self.object.category.name, id: self.object.category.id}
  end

  def mill
    {name: self.object.mill.name, id: self.object.mill.id}
  end

  def wash
    {name: self.object.wash.name, id: self.object.wash.id}
  end

  def condition
    {name: self.object.condition.name, id: self.object.condition.id}
  end

end
