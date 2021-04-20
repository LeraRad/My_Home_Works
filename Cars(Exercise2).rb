class Auto
  attr_accessor :speed, :color, :car_brand
  def initialize(speed = 280, color = "Black", car_brand = "Unknown")
    @speed = speed
    @color = color
    @car_brand = car_brand
  end

  def max_speed(speed)
    if speed > 250
      puts "High Maximal Speed. More then 250 km/h"
    elsif speed < 250
      puts "Low Maximal Speed. Less then 250 km/h"
    else speed == 250
      puts "Normal speed. Maximal speed is 250 km/h"
    end
  end

  def car_color(color)
    puts "Color: #{color}"
  end

  def brand(car_brand)
    puts "Car Brand: #{car_brand}"
  end

  def description
    puts max_speed.car_color.brand
  end
end

class BMW < Auto
  attr_accessor :nitro, :spoiler
  def initialize(nitro, spoiler)
    @nitro = nitro
    @spoiler = spoiler
    super(speed = 260, color = "Red", car_brand = "BMW")
  end

  def more_speed(nitro)
    nitro = "Extra speed due to nitro: #{@speed + 20} km/h"
  end

  def spoiler_length(spoiler)
    puts "Middle length of spoiler is 1 meter"
  end

  def description
    super
    puts more_speed, spoiler_length
  end
end

class Ford < Auto
  attr_accessor :spare_wheel
  def initialize(spare_wheel)
    @spare_wheel = spare_wheel
    super(speed = 240, color = "Dark-Blue", car_brand = "Ford")
  end

  def sp_wheel
    puts "#{@spare_wheel} at the back of this car"
  end

  def description
    super
    puts sp_wheel
  end

end

class Audi < Auto
  def initialise
    super(speed = 250, color = "White", car_brand = "Audi")
  end

  def horn
    puts "Bip-Bip!"
  end

  def description
    super
  end

end

car_1 = BMW.new()
puts car_1.description

car_2 = BMW.new()
puts car_2.description

car_3 = BMW.new()
puts car_3.description

car_4 = BMW.new()
puts car_4.description

car_5 = Ford.new()
puts car_5.description

car_6 = Ford.new()
puts car_6.description

car_7 = Ford.new()
puts car_7.description

car_8 = Audi.new()
puts car_8.description

car_9 = Audi.new()
puts car_9.description

car_10 = Audi.new()
puts car_10.description
