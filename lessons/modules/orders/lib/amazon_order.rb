# ./amazon_order.rb
require 'online_order'
class AmazonOrder
  include OnlineOrder

  def initialize
    @type = 'order'
    @time = '2 business days'
  end
 
  def delivery
    "Your order will arrive in 2 business days."
  end
end
