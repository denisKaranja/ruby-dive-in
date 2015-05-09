=begin
Classes
=end

class Animal
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

duck = Animal.new()
	duck.set_noise("Quack!")
	puts duck.get_noise()