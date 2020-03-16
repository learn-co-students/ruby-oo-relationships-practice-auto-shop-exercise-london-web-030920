class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all 
    @@all
  end

  def all_cars
    Car.all.select{|car| car.owner == self}
  end

  def all_mechanics
    self.all_cars.map{|car| car.mechanic}.uniq
  end

  def self.average_per_owner
     Car.all.count.to_f / self.all.count.to_f 
  end

end

