def consolidate_cart(cart)
  consolidate_hash = {}
  cart.each do |i|
    i.each do |k, v|
    if consolidate_hash.has_key?(k)
      consolidate_hash[k][:count] += 1
    else
      consolidate_hash[k][:count] = 1 
    end
  end
  end
  consolidate_hash
end
    