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

def apply_coupons(cart, coupons)
  coupons.each do |coupon| 
    if cart.has_key? (coupon[:item]) && cart[:item][:count] >= coupon[:num]
      item_w_coupon = coupon[:item] + "W/COUPON"
    if cart.has_key? (item_w_coupon)  
      cart[item_w_coupon][:count] += 1
    else 
      cart[item_w_coupon] = {price: coupon[:cost], clearance: cart[coupon[:item]][:clearance], count: 1}
    cart[coupon[:item]][:count] -= coupon[:num]
      end
    end
    cart
end
     