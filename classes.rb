=begin
Classes
=end

class Animal
	#getters and setters
	attr_accessor :name
	attr_reader :legs, :arms
	attr_writer :height

	#class instance
	@@species = ["Elephant", "Rhino", "Leopard", "Buffalo", "Honey barger", "Fox", "Wild Dog"]

	def self.species
		@@species
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

	def color=(color)
		@color = color
	end

	def color
		"The color is #{@color}" 
	end

end

#inheritance
class Cow < Animal
	def color
		"This cow's color is #{@color}"
	end
end

class Pig < Animal
	def noise
		"Hello, i am a pig. I Oink!!"
	end

	def color
		"This pig's color is #{@color}"
		super()
	end

end




puts "\nAll available species"
puts "---------------------"
puts Animal.species()
puts "---------------------\n\n"

cow = Animal.new("Moo!", 4, 2)
	puts "Animal one --> Cow\n••••••••••••••••••••"
	puts cow.get_noise()
	cow.name = "Mooshkins"
	puts "My name is #{cow.name}"
	cow.color = "Black"
	puts "And i am #{cow.color} in color"
	puts "End\n\n"

duck = Animal.create_with_attr("Quack!" , "Brown")
	puts "Animal two --> Duck\n••••••••••••••••••••"
	puts duck.get_noise()
	puts duck.color


maisie = Cow.create_with_attr("Moooo", "Black && White")
	puts maisie.get_noise()
	puts maisie.color()

pigie = Pig.create_with_attr("Oink", "Pink")
	puts pigie.noise()
	puts pigie.color()

