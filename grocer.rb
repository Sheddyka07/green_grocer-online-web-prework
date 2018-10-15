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
        if cart.has_key?(coupon[:item]) && cart[coupon[:item]][:count] >= coupon[:num]
            item_withcoupon = coupon[:item] + " W/COUPON"
        if cart.has_key?(item_withcoupon)
            cart[item_withcoupon][:count] += 1
        else
            cart[item_withcoupon] = {price: coupon[:cost], clearance: cart[coupon[:item]][:clearance], count: 1}
        end
        cart[coupon[:item]][:count] -= coupon[:num]
        end
    end
    cart
end
     
     
    cart.each do |item, attributes|
        if attributes[:clearance] == true
            attributes[:price] = (attributes[:price]*(0.8)).round(2)
        end
    end
    cart
end     