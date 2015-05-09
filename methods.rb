=begin
Methods
=end

def welcome
	puts "Hello Ruby :) "
end

def above_ten?
	value = 5
	puts value > 10 ? "above ten" : "below ten"
end

def add(x, y)
	return x + y
end

puts add(10, 3)
