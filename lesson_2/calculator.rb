# ask user for two numbers (integers and non-integers; positive and negative numbers)
# ask user for an operator (+, -, *, /)
# calculate based on the user's input
# display the result

puts("Welcome to the calculator")
puts ("Enter the first number:")
num1 = gets().to_f
puts("Enter the second number:")
num2 = gets().to_f
puts("Enter the operator (+, -, *, /)")
operator = gets().strip()

case operator
when "+"
  result = num1 + num2
when "-"
  result = num1 - num2
when "*"
  result = num1 * num2
when "/"
  result = num1 / num2
else
  return puts("Invalid operator")
end

puts "The calculated result is #{result}."

