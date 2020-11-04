class Owner
  attr_accessor :pets
  attr_reader :name, :species
  
  
  @@all = []
  
  def initialize(species)
    @species = "human"
    @@all << self
    @pets = {:dogs => [], :cats => []}
  end


  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end


  def sell_pets
    @pets.each do |type, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    return "I have #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
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
end