class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  @@all=[]
  
  def initialize(name,owner, mood: "nervous")
    @owner = owner
    @name = name
    @mood = mood
    owner.cats
  #  @@all << self
  save 
  end 
  
  def self.all 
    @@all
  end 
  
  def save
    @@all << self
  end 
end