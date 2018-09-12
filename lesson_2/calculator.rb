# ask user for two numbers (positive and negative, integers and non-integers)
# ask user for an operator (+, -, *, /)
# calculate based on the user's input
# display the result

ADD = "+"
SUBTRACT = "-"
MULTIPLY = "*"
DIVIDE = "/"

NAME = 0
NUMBER = 1
OPERATOR = 2

def calculator(name)
  prompt ("Enter the first number:")
  num1 = validateEntry(gets.chomp, NUMBER)

  prompt("Enter the second number:")
  num2 = validateEntry(gets.chomp, NUMBER)

  operator_prompt = <<-MSG
    What operation would you like to perform? Please enter:
      + for addition
      - for subtraction
      * for multiplication
      / for division
  MSG

  prompt(operator_prompt)
  operator = validateEntry(gets.chomp, OPERATOR)

  result = calculate(num1.to_f, num2.to_f, operator)
  prompt("(#{num1} #{operator} #{num2}) = #{result}")

  prompt("Do you want to do another calculation?")
  if gets.downcase.start_with?('y')
    calculator(name)
  else
    prompt("Thank you for playing, #{name}.")
  end
end

def prompt(message)
  puts("=> #{message}")
end

def checkNum(num)
  num == "0" || (num.to_f != 0 && num != "0") ? true : false
end

def validateEntry(entry, type)
  case type
  when NAME
    while entry.empty?()
      prompt("Please provide a valid name:")
      entry = gets.chomp
    end
  when NUMBER
    until checkNum(entry)
      prompt("Invalid number. Please enter a numeric value:")
      entry = gets.chomp
    end
  when OPERATOR
    # until %w(+ - * /).include?(entry)
    until entry == ADD || SUBTRACT || MULTIPLY || DIVIDE do
      prompt("Invalid operator. Please enter +, -, *, or /:")
      entry = gets.chomp
    end
  end
  entry
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

prompt("Welcome to the calculator. Enter your name:")
name = validateEntry(gets.chomp, NAME)
prompt("Hello #{name}!")
calculator(name)


