def titleize(str)
  token = str.split(' ')
  token.each  { |t| t.capitalize! }
  return token.join(' ')
end

titleize("I am a boy")
titleize("I am    a boy? ?")
titleize("")
