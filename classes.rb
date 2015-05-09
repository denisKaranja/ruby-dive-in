=begin
Classes
=end

class Animal
	#getters and setters
	attr_accessor :name
	attr_accessor :color
	attr_reader :legs, :arms
	attr_writer :height

	def set_noise(noise)
		# instance variables '@'
		@noise = noise
	end

	def get_noise()
		@noise
	end

end

cow = Animal.new()
	cow.set_noise("Moo!")
	puts cow.get_noise()
	cow.name = "Mooshkins"
	puts "My name is #{cow.name}"
	cow.color = "Black"
	puts "And i am #{cow.color} in color"

duck = Animal.new()
	duck.set_noise("Quack!")
	puts duck.get_noise()