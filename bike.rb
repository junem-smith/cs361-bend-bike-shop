
# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage

  def initialize(args)
    @id = args[:id]
    @color = args[:color]
    @price = args[:price]
    @weight = args[:weight] || STANDARD_WEIGHT
    @luggage = args[:luggage] || Luggage.new(:items => extra_items)
  end

end
