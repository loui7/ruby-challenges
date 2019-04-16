class Cashier
  attr_reader :id, :orders

  def initialize(id, orders)
    @id = id
    @orders = orders
  end
end
