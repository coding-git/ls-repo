# ask user for two numbers (positive and negative, integers and non-integers)
# ask user for an operator (+, -, *, /)
# calculate based on the user's input
# display the result

ADD = "+"
SUBTRACT = "-"
MULTIPLY = "*"
DIVIDE = "/"

def prompt(message)
  puts("=> #{message}")
end

def validate_name(name)
  while name.empty?()
    prompt "Please provide a valid name:"
    return gets.chomp
  end
  name
end

def validate_num(num)
  unless num == "0" || (num.to_f != 0 && num != "0")
    prompt "Please enter a valid number."
    num = gets.chomp
  end
  num
end

def validate_operator(operator)
  # until %w(+ - * /).include?(entry)
  until operator == ADD || SUBTRACT || MULTIPLY || DIVIDE
    prompt "Invalid operator. Please enter +, -, *, or /:"
    operator = gets.chomp
  end
  operator
end

def calculate(num1, num2, operator)
  case operator
  when ADD
    num1 + num2
  when SUBTRACT
    num1 - num2
  when MULTIPLY
    num1 * num2
  when DIVIDE
    num1 / num2
  end
end

prompt "Welcome to the calculator. Enter your name:"
name = validate_name(gets.chomp)
prompt("Hello #{name}!")

loop do
  prompt "Enter the first number:"
  num1 = validate_num(gets.chomp)

  prompt "Enter the second number:"
  num2 = validate_num(gets.chomp)

  operator_prompt = <<-MSG
    What operation would you like to perform? Please enter:
      + for addition
      - for subtraction
      * for multiplication
      / for division
  MSG

  prompt(operator_prompt)
  operator = validate_operator(gets.chomp)

  result = calculate(num1.to_f, num2.to_f, operator)
  prompt("(#{num1} #{operator} #{num2}) = #{result}")

  prompt "Do you want to do another calculation?"
  unless gets.downcase.start_with?('y')
    prompt("Thank you for playing, #{name}.")
    break
  end
end
