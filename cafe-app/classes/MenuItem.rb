class MenuItem
  attr_reader :id, :name, :price, :cost

  def initialize(id, name, price, cost)
    @id = id
    @name = name
    @price = price
    @cost = cost
  end

  def menu_display()
    return "#{@id.to_s.center(20)}|#{@name.center(20)}|#{@price.center(20)}"
  end
end
