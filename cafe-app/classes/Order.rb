class Order
  attr_reader :id, :menu_items, :customer_email

  def initialize(id, menu_items, customer_email)
    @id = id
    @menu_items = menu_items
    @customer_email = customer_email
    @creation_date = Date.new
  end

  def to_s
    order = "Order for #{@customer_email}"
    @menu_items.each { |item| order << "\n#{item[:name]} x #{item[:qty]}" }

    return order
  end
end
