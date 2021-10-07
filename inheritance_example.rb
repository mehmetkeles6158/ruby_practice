class Vehicle

  def initialize
    @speed = 0
    @direction = 'north'
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

class Bike < Vehicle
  
  def ring_bell
    puts "Ring ring!"
  end

  def bike_info
    puts "This is a Santa_Cruz"
  end

end

obj_bike = Bike.new
obj_bike.bike_info

class Car < Vehicle

  def honk_horn
    puts "Beeeeeeep!"
  end

  def car_info
    puts "It is camry XSE"
  end

end

obj_car = Car.new
obj_car.car_info

