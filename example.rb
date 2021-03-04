require 'pry'

class Dog

    attr_accessor :name, :fur_color, :wet_nose, :barkative, :friendliness, :breed, :size, :eyes

    @@all = []

    def initialize(name, fur_color, wet_nose, barkative, friendliness, breed, size, eyes)
        @name = name
        @fur_color = fur_color
        @wet_nose = wet_nose
        @barkative = barkative
        @friendliness = friendliness
        @breed = breed
        @size = size
        @eyes = eyes
        @@all << self
    end

    def self.all
        @@all
    end


    def i_method
        # self = instance of our class
        second_method
    end


    def second_method
        puts "in second method"
        puts self
    end

    def Dog.hi_from_dog
        puts "hi from #{self}"
        self.bye_from_dog
    end

    def self.bye_from_dog
        puts "#{self} bye from dog!"
    end

    def self.find_barkative_level(barky)
        self.all.find_all { | dog | dog.barkative == barky }
    end

    def self.match_name(name)
        self.all.find { | dog | dog.name == name }
    end


end

buzz = Dog.new("Buzz", "Black and white", "soggy", 2, "psychotically friendly", "Great Pyrenees/Panda", "big", "black")
woody = Dog.new("Woody", "Brown and white", "dry", 4, "shy", "American Red Pitbull/bunny", "big", "brown")
sam = Dog.new("Sam", "Black and brown", "soggy", 1, "medium", "Bull Mastiff", "huge", "black")
bonbon = Dog.new("name", "tan and black", "", 2, "psychotically friendly and skidish", "English Mastiff", "huge", "black")
Kaia = Dog.new("kaidoggo", "white and red", "drippy", 6, "aloof","Heeler/Pit", "medium","brown")
roy = Dog.new("roy", "brown and white", "regular", 6, "obedient and loyal", "Jack-Russel Terrier", "medium", "black")
Xena = Dog.new("Xena", "Black", "wet", "incapable", "anxious", "Domestic", "small", "yellow")
jackson = Dog.new("Jackson", "black and white", "wet", "10", "goofy hyperactive", "husky", "medium", "blue")
Cookie = Dog.new("Cookie", "Black and white", "damp", 8, "unbelievably friendly", "Cat Dog", "small", "green")
Spot = Dog.new("spot", "red", "moderately wet", 5, "extremely friendly", "collie", "medium", "light brown")
Casper = Dog.new("Casper", "Blonde", "medium", 4, "Very Friendly", "Yellow Lab", "Bigish", "brown")



binding.pry