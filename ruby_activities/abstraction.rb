class Order
  TAX_RATE = 0.08 # Assuming an 8% sales tax
  attr_accessor :item_price, :quantity, :member
  def initialize(item_price, quantity, member=false)
    @item_price = item_price
    @quantity = quantity
    @member = member
  end

  def final_total
    base_total = subtotal
    tax_amount = calculate_tax(base_total)
    discount_amount = calculate_member_discount(base_total)
    base_total + tax_amount - discount_amount
  end

  private

  def subtotal
    @item_price * @quantity
  end

  def calculate_tax(amount)
    amount * TAX_RATE
  end

  def calculate_member_discount(amount)
    discount_rate = @member ? 0.1 : 0
    amount * discount_rate
  end
end

order = Order.new(50, 5, true)
puts "The final total is: $#{order.final_total}"
