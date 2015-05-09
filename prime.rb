def is_prime(x)
	if x == 1
		return false
	end

	if (x % 2) == 0
		return (x == 2)
	end

	start = 3
	while (start * start) <= x
		if (x % start) == 0
			return false
		end
		start += 2
	end

	return true
	end

x = 1
while x <= 20
	if is_prime(x)
		print x
		puts " is prime"
		x = x.next
	end
	x = x.next
	
end
puts is_prime(7)