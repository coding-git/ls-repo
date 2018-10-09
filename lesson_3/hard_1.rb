# Question 4

# def dot_separated_ip_address?(input_string)
# #   dot_separated_words = input_string.split(".")
# #   return false if dot_separated_words.size != 4
# #   while dot_separated_words.size > 0 do
# #     word = dot_separated_words.pop
# #     return false unless is_an_ip_number?(word)
# #   end
# #   true
# # end
# #
# # def is_an_ip_number?(word)
# #   check_length(word, 0, 4) && is_number?(word)
# # end
# #
# # def check_length(str, min, max)
# #   str.length > min && str.length < max
# # end
# #
# # def is_number?(str)
# #   str == 0 || str.to_i.to_s == str.to_s
# # end
# #
# # puts dot_separated_ip_address?("12.123.1.123")

def is_an_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.size != 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless check_length(word, 0, 4) && is_number?(word)
  end

  true
end

def check_length(str, min, max)
  str.length > min && str.length < max
end

def is_number?(str)
  str == 0 || str.to_i.to_s == str.to_s
end

puts is_an_ip_address?("12.123.1.0")

