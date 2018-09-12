# ask user for two numbers (positive and negative, integers and non-integers)
# ask user for an operator (+, -, *, /)
# calculate based on the user's input
# display the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

ADD = "+"
SUBTRACT = "-"
MULTIPLY = "*"
DIVIDE = "/"


def internationalize(msg)
  lang = LANGUAGE.nil? || LANGUAGE.empty? ? 'en' : LANGUAGE
  MESSAGES[lang][msg]
end

def prompt(message)
  puts("=> #{message}")
end

def validate_name(name)
  while name.empty?()
    prompt internationalize('valid_name')
    return gets.chomp
  end
  name
end

def validate_num(num)
  # option2: use /\d/.match(num) && /^\d*\.?\d*$/.match(num)
  # option3: use Float(input) rescue false
  until num == "0" || num.to_i.to_s == num || num.to_f.to_s == num
    prompt internationalize('valid_num')
    num = gets.chomp
  end
  num
end

def validate_operator(operator)
  #until %w(+ - * /).include?(operator)
  until [ADD, SUBTRACT, MULTIPLY, DIVIDE].include? operator
    prompt internationalize('valid_operator')
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

prompt internationalize('welcome')
name = validate_name(gets.chomp)
prompt (internationalize('hello') + "#{name}")

loop do
  prompt internationalize('first_num')
  num1 = validate_num(gets.chomp)

  prompt internationalize('second_num')
  num2 = validate_num(gets.chomp)

  operator_prompt = internationalize('operator_msg')

  prompt(operator_prompt)
  operator = validate_operator(gets.chomp)

  result = calculate(num1.to_f, num2.to_f, operator)
  prompt("(#{num1} #{operator} #{num2}) = #{result}")

  prompt internationalize('new_calculation')
  unless gets.downcase.start_with?('y')
    prompt (internationalize('thank_you') + "#{name}.")
    break
  end
end
