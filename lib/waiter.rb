class Waiter
  attr_accessor :name, :yr_experience
  
  @@all = [ ]
  
  def initialize(name,yr_experience)
    @name = name
    @yr_experience = yr_experience
    @@all << self
  end 
  def self.all
    @@all
  end
  
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer,total,tip)
  end 
  
  def meals
    Meal.all.select do |meal|
    meal.waiter == self
  end
end

  
  

end