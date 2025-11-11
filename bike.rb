# Bike


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

  def add_cargo(item)
    @cargo_contents << item
  end

  def remove_cargo(item)
    @cargo_contents.remove(item)
  end

  def pannier_capacity
    @cargo_contents.pannier_capacity
  end

  def pannier_remaining_capacity
    @cargo_contents.pannier_remaining_capacity
  end

end


