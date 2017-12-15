def match_check(str)
  opening = ['(','{','[']
  closing = [')','}',']']
  stack = []
  for i in 0..str.length - 1
    if opening.include?(str[i])
      stack.push(str[i])
    else
      if stack.empty?
        return false
      end
      if opening.find_index(stack.last) != closing.find_index(str[i])
        return false
      end
      stack.pop
    end
    i = i + 1
  end
  return stack.empty?
end

puts "((()))"
match_check("((()))")

puts "({[]})"
match_check("({[]})")

puts" ((("
match_check("(((")


