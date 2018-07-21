class Owner
  attr_reader :species, :name
  attr_accessor :pets 
  
  @@all = []
  
  def initialize(species)
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
  end
  
  def self.all()
    @@all
  end
  
  def self.count()
    @@all.count
  end
  
  def self.reset_all()
    @@all = []
  end
  
  def say_species()
    return "I am a #{@species}."
  end
  
  def name=(name)
    @name = name
  end
  
  def buy_fish(name)
    pet_fish = Fish.new(name)
    @pets[:fishes] << pet_fish
  end
  
  def buy_cat(name)
    pet_cat = Cat.new(name)
    @pets[:cats] << pet_cat
  end
  
  def buy_dog(name)
    pet_dog = Dog.new(name)
    @pets[:dogs] << pet_dog
  end
  
  def walk_dogs()
    @pets.each do |dogs, d|
      d.mood = "happy"
    end
  end
end