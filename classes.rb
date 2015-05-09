=begin
Classes
=end

class Animal
	#getters and setters
	attr_accessor :name
	attr_accessor :color
	attr_reader :legs, :arms
	attr_writer :height

	def self.species
		["Elephant", "Rhino", "Leopard", "Buffalo", "Honey barger", "Fox", "Wild Dog"]
	end

	def self.create_with_attr(noise, color)
		animal = self.new(noise)
		animal.color = color
		return animal
	end

	def initialize(noise, legs = 4, arms = 0)
		@noise = noise
		@legs = legs
		@arms = arms
	end

	def get_noise()
		@noise
	end

end

puts "\nAll available species"
puts "---------------------"
puts Animal.species()
puts "---------------------\n\n"

cow = Animal.new("Moo!", 4, 2)
	puts cow.get_noise()
	cow.name = "Mooshkins"
	puts "My name is #{cow.name}"
	cow.color = "Black"
	puts "And i am #{cow.color} in color"

duck = Animal.create_with_attr("Quack!" , "Brown")
	puts duck.get_noise()
	puts duck.color

	