#write your code here
def echo (input)
	input
end

def shout(input)
	input.upcase
end
def repeat(input,numberOfTimes=2)

	toSend  = (input+ ' ')*(numberOfTimes-1)
	return (toSend + input)
	
end

def start_of_word(inputString,numberOfCharacters)
	inputString[0..numberOfCharacters-1]
	
end

def first_word(inputString)
	splitArray = inputString.split(' ')

	splitArray[0]
end

def titleize(inputString)
	splitArray = inputString.split(' ')
	littleWords = ["and","the","over"]
	i = 0
	splitArray.each do |word|
		if (i == 0) 
			splitArray[i]	 = splitArray[i].capitalize
		elsif i!=0 and !(littleWords.include? word.downcase)
			splitArray[i]	 = splitArray[i].capitalize
		end
		
		i = i + 1
	end

	splitArray.join(" ")

end
