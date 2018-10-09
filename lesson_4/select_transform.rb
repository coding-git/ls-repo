# 1. select fruits from a produce list

# produce = {
#     'apple' => 'Fruit',
#     'carrot' => 'Vegetable',
#     'pear' => 'Fruit',
#     'broccoli' => 'Vegetable',
#     'mango' => 'Fruit'
# }
#
# def select_fruit(plist)
#   counter = 0
#   fruits = {}
#   keys = plist.keys
#
#   loop do
#     break if counter == plist.size
#
#     current_item = keys[counter]
#     current_item_type = plist[current_item]
#
#     if current_item_type == 'Fruit'
#       fruits.store(current_item, current_item_type)
#     end
#
#     counter += 1
#   end
#   fruits
# end
#
# p select_fruit(produce)

# 2. double numbers with mutation

# def double_numbers!(numbers)
#   counter = 0
#
#   loop do
#     break if counter == numbers.size
#
#     numbers[counter] *= 2
#
#     counter += 1
#   end
#   numbers
# end
#
# p double_numbers!([1,4,3,2,6])

# 3. double numbers with odd indices

# def double_num_with_odd_indices(numbers)
#   counter = 0
#   doubled_numbers = []
#
#   while counter < numbers.size
#
#     current_number =
#         if counter.odd?
#           numbers[counter] *= 2
#         else
#           numbers[counter]
#         end
#
#     doubled_numbers << current_number
#     counter += 1
#   end
#   doubled_numbers
# end
#
# p double_num_with_odd_indices([1,2,3,4,5,6])

# 4. Multiply

# def multiply(numbers, multiplier)
#   count = 0
#   result = []
#
#   while count < numbers.size
#     result << numbers[count]*multiplier
#     count += 1
#   end
#   result
# end
#
# my_numbers = [1,4,3,7,2,6]
# p multiply(my_numbers, 3)