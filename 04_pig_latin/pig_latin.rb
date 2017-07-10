#write your code here
def translate(s)
	vowels = ['a','e','i','o','u']
	singlePhenome = ["squ","qu","sch"]
	splitArray = s.split(' ')
	i = 0
	splitArray.each do |word|
		if(vowels.include? word[0].downcase)
			splitArray[i] = translateVowel(word)
		elsif (word[0..2].downcase.eql? singlePhenome[0] or word[0..2].downcase.eql? singlePhenome[2] or word[0..1].downcase.eql? singlePhenome[1])
			splitArray[i] = translatePhenome(word)
		else
			splitArray[i] = translateConsonant(word)
		end
		i = i + 1
	end

	splitArray.join(" ")

	#if(vowels.include? s[0].downcase)
	#	return (s+'ay')
	#else
	#		return (s[1..-1]+s[0]+'ay')
	#end
end

def translateConsonant(s)

	vowels = ['a','e','i','o','u']

	i = 0
	while !(vowels.include? s[i].downcase)
		i = i + 1
	end

	return (s[i .. -1] + s[0..i-1] + 'ay')

end

def translateVowel(s)

	return (s + 'ay')
end

def translatePhenome(s)
	phenomeWords = ["qu","squ","sch"]

	if phenomeWords[0].eql? s[0..1].downcase 
		return (s[2..-1] + s[0..1] + 'ay')
	elsif phenomeWords[1].eql? s[0..2].downcase 
		return (s[3..-1] + s[0..2] + 'ay')
	else phenomeWords[2].eql? s[0..2].downcase 
		return (s[3..-1] + s[0..2] + 'ay')
	end
			
end