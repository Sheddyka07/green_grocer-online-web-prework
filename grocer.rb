def consolidate_cart(cart)
  consolidated_cart = {}
  cart.each do |item|
    item.each do |name, attributes|
      attributes[:count] = cart.count(item)
      end
    consolidated_cart.merge!(item)
  end
  consolidated_cart
end

def apply_coupons
  
    