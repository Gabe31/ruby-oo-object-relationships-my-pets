class Owner
  attr_accessor :pets
  attr_reader :species, :name 
  
  @@all = []
  
  def initialize(name)  
    @name = name
    @species = "human"
    @pets = {:dog => [], :cat => []}
    @@all << self
  end 

  def say_species
    return "I am a human."
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end
  
  def cats
    Cat.all.select do |cat|
    cat.owner == self
  end
end 

  def dogs
    Dog.all.select do |dog|
    dog.owner == self
  end
end 

def buy_cat(cat_name)
  @pets[:cat] << Cat.new(cat_name)
end 


end 


