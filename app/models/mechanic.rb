class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  def self.all 
    @@all
  end

  def all_cars
    Car.all.select{|car| car.mechanic == self}
  end

  def all_owners
    self.all_cars.map{|car| car.owner}
  end

  def all_owners_names
    self.all_cars.map{|car| car.owner.name}
  end
end
