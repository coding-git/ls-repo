###################################
# 1
###################################
# arr = ['10', '11', '9', '7', '8']
#
# p arr.sort { |a, b| b.to_i <=> a.to_i }

###################################
# 2
###################################

# books = [
#     {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
#     {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
#     {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
#     {title: 'Ulysses', author: 'James Joyce', published: '1922'}
# ]
#
# p books.sort_by { |book| book[:published].to_i }

###################################
# 3
###################################

# arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
# p arr1[2][1][3]
#
# arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
# p arr2[1][:third][0]
#
# arr3 = [['abc'], ['def'], {third: ['ghi']}]
# p arr3[2][:third][0][0]
#
# hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
# p hsh1['b'][1]
#
# hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
# p hsh2[:third].keys[0]

###################################
# 4
###################################

# arr1 = [1, [2, 3], 4]
# arr1[1][1] = 4
# p arr1
#
# arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
# arr2[-1] = 4
# p arr2
#
# hsh1 = {first: [1, 2, [3]]}
# hsh1[:first][-1][0] = 4
# p hsh1
#
# hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
# hsh2.values[0].values[0][2] = 4
# p hsh2

###################################
# 5
###################################

# munsters = {
#     "Herman" => { "age" => 32, "gender" => "male" },
#     "Lily" => { "age" => 30, "gender" => "female" },
#     "Grandpa" => { "age" => 402, "gender" => "male" },
#     "Eddie" => { "age" => 10, "gender" => "male" },
#     "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# total_age = 0
# munsters.each_value do |description|
#   total_age += description['age'] if description['gender'] == 'male'
# end
#
# puts total_age

###################################
# 6
###################################

# munsters.each do |name, description|
#   puts "#{name} is a #{description['age']}-yeard-old #{description['gender']}"
# end

###################################
# 8
###################################

# hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
#
# vowels = 'aeiou'
# letters = hsh.values.join.chars
# letters.each do |letter|
#   puts letter if vowels.include?(letter)
# end

###################################
# 9
###################################

# arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
#
# p arr.map { |items| items.sort { |a, b| b <=> a } }

###################################
# 10
###################################

# arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
#
# p arr.map { |items| items.values.map { |num| num += 1 } }

###################################
# 11
###################################

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
#
# arr.map do |sub_arr|
#   sub_arr.select do |num|
#     num % 3 == 0
#   end
# end

###################################
# 12
###################################

# arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
#
# arr.each_with_object({}) do |sub_arr, new_h|
#   new_h[sub_arr[0]] = sub_arr[1]
# end

###################################
# 13
###################################
#
# arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]
#
# arr.sort_by do |sub_arr|
#   sub_arr.select do |num|
#     num.odd?
#   end
# end

###################################
# 14
###################################

# hsh = {
#     'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
#     'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
#     'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
#     'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
#     'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
# }
#
# hsh.map do |_, description|
#   case description[:type]
#   when 'fruit'
#     description[:colors].map { |color| color.capitalize }
#   when 'vegetable'
#     description[:size].upcase
#   end
# end
#
# ###################################
# # 15
# ###################################
#
# arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]
#
# arr.select do |item|
#   item.all? do |_, values|
#     values.all? { |num| num.even? }
#   end
# end

###################################
# 16
###################################

def generate_uuid
  allowed_chars = %w( 0 1 2 3 4 5 6 7 8 9 a b c d e f )

  uuid = ""
  sections = [8, 4, 4, 4, 12]

  sections.each do |section|
    section.times { uuid += allowed_chars.sample }
    uuid += "-" unless section == sections.last
  end

  uuid
end

p generate_uuid