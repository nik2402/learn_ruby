#write your code here
def add(x,y)
	return (x+y)
end

def subtract(x,y)
	return (x-y)
end

def sum(inputArray)

	sum = 0

	inputArray.each do |i|
		sum = sum + i
		
	end
	return sum
end

def multiply(inputArray)
	product = 1
	inputArray.each do |i|
		product = product * i
	end
	return product
end

def power(base,exp)
	if exp == 0
		return 1
	end
	pow = base
	exp.times do |i|
		pow = pow * base
	end
	return pow/base
end


def factorial(number)
	start = 1
	if number == 0
		return 0
	end
	factorial = 1
	number.times do 
		factorial = factorial * start
		start = start + 1
	end
	return factorial
end