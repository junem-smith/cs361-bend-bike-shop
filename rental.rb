

class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    # self.bike.price + self.bike.luggage.items.count * 10
    self.bike.price + 2*(self.weight) + 2*(self.bike.luggage.weight)
  end

  def weight
    self.bike.weight + self.bike.luggage.items.weight
  end

end
