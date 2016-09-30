require "pry"
class Owner
  attr_accessor :name, :pets
  @@all = []
  @@count = 0


  def initialize(name)
    @name = name
    @@all << self
    @@count += 1
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.reset_all
    @@all = []
    @@count = 0
  end


  def self.count
    @@count
  end


  def self.all
    @@all
  end


  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end


  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end


  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end


  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood=("happy")}
  end

  def play_with_cats
    @pets[:cats].each {|cat| cat.mood=("happy")}
  end


  def feed_fish
    @pets[:fishes].each {|fish| fish.mood=("happy")}
  end

  def sell_pets
    @pets.values.flatten.map {|pet| pet.mood=("nervous")}
    @pets = {}
  end

  def list_pets
    return "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  # def buy_fish
  #   @fish
  # end


end
