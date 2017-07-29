class Vehicle
  attr_reader :speed
  def initialize(input_options)
    @speed = input_options[:speed]
    @direction = input_options[:direction]
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

end

class Car < Vehicle
  attr_reader :make, :model, :fuel_remaining

  def initialize(input_options)
    super
    @make = input_options[:make]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_reader :weight, :type
  def initialize(input_options)
    super
    @weight = input_options[:weight]
    @type = input_options[:type]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

# car1 = Car.new({:make => "ford", :speed => 12, :direction => 'south'})
# p car1.make # => 'ford'
# p car1

bike1 = Bike.new({speed: 18, type: 'mountain', weight: 37, direction: 'west'})
# bike1.ring_bell
p bike1