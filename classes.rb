=begin
Classes
=end

class Animal
	#getters and setters
	attr_accessor :name
	attr_accessor :color
	attr_reader :legs, :arms
	attr_writer :height

	def initialize(noise, legs = 4, arms = 0)
		@noise = noise
		@legs = legs
		@arms = arms
	end

	def get_noise()
		@noise
	end

end

cow = Animal.new("Moo!", 4, 2)
	puts cow.get_noise()
	cow.name = "Mooshkins"
	puts "My name is #{cow.name}"
	cow.color = "Black"
	puts "And i am #{cow.color} in color"

duck = Animal.new("Quack!")
	puts duck.get_noise()