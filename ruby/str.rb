
def compress(str) 
	return if str.empty?
	result = ""
	last = str[0]
	count = 1

	for i in 1..str.length - 1 do
		
		if str[i] == last
		  count = count + 1
		else
			result = result + last + "" + count.to_s
			last = str[i]
			count = 1
		end

		i = i + 1
	end

	result =  result + last.to_s + count.to_s
	result
end


puts compress("aaabbcdddd")


puts compress("a")

puts compress("aaabbbcccaaabbbccc")

puts compress("")
