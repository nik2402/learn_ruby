class Book
# write your code here
attr_accessor :title

def title
	splitArray = @title.split(" ")
	neverCapitalize = ["a","an","the","and","in","of"]
	alwaysCapitalize = "I"
	i = 0
	splitArray.each do |word|
		if !(neverCapitalize.include? word.downcase) or i==0
			splitArray[i] = word.capitalize
		elsif alwaysCapitalize.eql? word.downcase
			splitArray[i] = word.capitalize
		end

		i = i + 1
	end

	return splitArray.join(" ")
end
end
