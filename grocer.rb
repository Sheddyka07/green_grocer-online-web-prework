def consolidate_cart(cart)
  consolidate_hash = {}
  cart.each do |key, value|
    value[:count] = value.count
  end
end
    