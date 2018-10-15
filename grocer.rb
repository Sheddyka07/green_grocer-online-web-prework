def consolidate_cart(cart)
  consolidate_hash = {}
  cart.each do |item|
    item.each do |key, value|
    if consolidate_hash.has_key?(key)
      consolidate_hash[key][:count] += 1
    else
      hash[key][:count] = 1 
    end
  end
  end
  consolidate_hash
end
    