# ./grubhub_order.rb
require 'online_order'
class GrubhubOrder
  include OnlineOrder

  def initialize
    @type = 'food'
    @time = '45-60 minutes'
  end
end
