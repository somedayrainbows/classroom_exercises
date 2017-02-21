class Vehicle
  attr_reader :model, :four_wheel, :big_back_wheels

  def initialize(model, four_wheel, big_back_wheels)
    @model = model
    @four_wheel = four_wheel
    @big_back_wheels = big_back_wheels
  end

  def car?
    model == "car"
  end

  def tractor?
    model == "tractor"
  end

  def pickup?
    model == "pickup"
  end

  def four_wheel_drive?
    four_wheel
  end

  def big_back_wheels?
    big_back_wheels
  end
end

vehicle = Vehicle.new("pickup", true, true)

if vehicle.car? && (vehicle.four_wheel_drive? || !vehicle.four_wheel_drive?)
  puts "Vehicle has four wheels "
end
--------
if vehicle.car?
  if vehicle.four_wheel_drive? || !vehicle.four_wheel_drive?
    puts "Vehicle has four wheels "
    if vehicle.four_wheel_drive?
      puts "with four wheel drive"
    else
      puts "with two wheel drive"
    end
  end
elsif vehicle.tractor?
  puts "Vehicle has four wheels "
  if vehicle.big_back_wheels?
    puts "with big wheels in the back"
  end
elsif vehicle.pickup?
  puts "Vehicle has four wheels "
  if vehicle.four_wheel_drive?
    puts "with four wheel drive"
  else
    puts "with two wheel drive"
  end
  if vehicle.big_back_wheels?
    puts "with big wheels in the back"
  end
end
