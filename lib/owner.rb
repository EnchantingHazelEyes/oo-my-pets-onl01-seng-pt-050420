class Owner
  
  attr_accessor :pets, :cat, :dog 
  attr_reader :species, :name
  @@owner = []

  def initialize(name)
    @name = name
    @species = "human"
    save
    @dog = dog
    @cat = []
  #  @pets = {:dog => [], :cat => []}
  end

  def say_species
    return "I am a #{@species}."
  end
  
  def save 
    @@owner << self
  end 

   def self.all
    @@owner
  end

  def self.reset_all
    @@owner.clear
  end

  def self.count
    @@owner.size
  end
  
  def buy_cat(name)
    @cat << Cat.new(name)
  end
  
  def cats 
    @cat
  end 

  def buy_dog(name)
    pets[:dog] << Dog.new(name)
  end

  def walk_dogs
    pets[:dog].each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    pets[:cat].each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    pets.each do |species, animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end

  def list_pets
    "I have #{pets[:dog].count} dog(s), and #{pets[:cat].count} cat(s)."
  end
  
  
end