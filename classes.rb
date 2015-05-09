=begin
Classes
=end

class Animal
	def set_noise(noise)
		# instance variables '@'
		@noise = noise
	end

	def make_noise
		@noise
	end
end

cow = Animal.new()
	puts cow.set_noise("Moo!")

duck = Animal.new()
	puts duck.set_noise("Quack!")