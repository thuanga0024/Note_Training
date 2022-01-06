str = "abcdeU"
temp = ""
str.each_char do |char|
puts char if ['a','e','i','o','u'].include? char.downcase
end