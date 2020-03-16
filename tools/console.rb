require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

mechanic_1 = Mechanic.new("Mechanic 1", "speciality 1")
mechanic_2 = Mechanic.new("Mechanic 2", "speciality 2")

owner_1 = CarOwner.new("Car owner 1")
owner_2 = CarOwner.new("Car owner 2")

#def initialize(make, model, classification, owner, mechanic)
car_1 = Car.new("make_1", "model 1", "speciality 2", owner_1, mechanic_1)
car_2 = Car.new("make_2", "model 2", "speciality 1", owner_2, mechanic_2)
car_3 = Car.new("make_3", "model 3", "speciality 2", owner_2, mechanic_1)

binding.pry
