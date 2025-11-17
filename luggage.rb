class Luggage

  DEFAULT_MAX_CAPACITY = 10

  attr_reader :items

  def initialize(args)
    @capacity = args[:initial_capacity] || DEFAULT_MAX_CAPACITY
    @items = args[:items] || []
  end

  def add(item)
    self.items << item
  end

  def weight
    self.items.size * 10
  end

end
