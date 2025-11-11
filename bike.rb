# Bike
# Code should be
# • Transparent   The consequences of change should be obvious in the code that is
# changing and in distant code that relies upon it
# • Reasonable   The cost of any change should be proportional to the benefits the
# change achieves
# • Usable   Existing code should be usable in new and unexpected contexts
# • Exemplary   The code itself should encourage those who change it to perpetuate
# these qualities


class Cargo
  MAX_CARGO_ITEMS = 10

  def initialize(max = MAX_CARGO_ITEMS)
    @max = max
    @cargo = []
  end

  def add(item)
    @cargo << item
  end

  def remove(item)
    @cargo.remove(item)
  end

  def pannier_capacity
    @max
  end

  def pannier_remaining_capacity
    @max - @cargo.size
  end

end

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false, cargo_contents)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_contents = cargo_contents
  end

  def rent!
    self.rented = true
  end

end
