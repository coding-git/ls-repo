# Problem:
# Calculate a mortgage's monthly payment
# m = p * (j / (1 - (1+j)**(-n)))
#
# Input:
# 1. loan amount
# 2. APR
# 3. loan duration
#
# Output:
# Monthly payment amount
#
# Edge cases:
# 1. Any of the input is 0
#
# Error cases:
# 1. Any of the input is nil, empty, negative, or non-numeric
#
# Data Structure
# 1. Input: string -> float
# 2. Output: float -> string
#
# Algorithm
# 1. Present conditions to users
# 2. Check input validity -> go back to 1. if input is invalid
# 3. Convert to proper formats
# 4. Calculate
# 5. Present result
#
# Code

require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def read_config(label)
  MESSAGES[label]
end

def prompt(message)
  puts ("==> #{message}")
end

def check_amount(amount, label, is_apr)
  while (amount.nil? || amount.empty? || !is_numeric(amount) || amount.to_i <= 0)
    prompt read_config(label)
    amount = if (is_apr)
      gets.chomp.chomp('%')
    else
      gets.chomp()
    end
  end
  amount.to_f
end

def is_numeric(amount)
  if amount.to_f.to_s == amount || amount.to_i.to_s == amount
    return true
  else
    return false
  end

end

def monthly_mortgage(principal, apr, duration)
  monthly_amount = 0
  monthly_interest = apr / 100 / 12

  unless (principal == 0)
    monthly_amount = principal * (monthly_interest / (1 - (1+monthly_interest)**(-duration)))
  end

  prompt("#{read_config('monthly_mortgage')}#{'%.2f' % monthly_amount}")
end


prompt(read_config('welcome'))

loop do
  prompt(read_config('loan_amount'))
  loan_amount = check_amount(gets.chomp, 'valid_loan_amount', false)

  prompt(read_config('apr'))
  loan_apr = check_amount(gets.chomp.chomp('%'), 'valid_apr', true)

  prompt(read_config('loan_duration'))
  loan_duration = check_amount(gets.chomp, 'valid_duration', false)

  monthly_mortgage(loan_amount, loan_apr, loan_duration)

  prompt(read_config('continue'))

  break unless gets.downcase.start_with?('y')

end

  prompt(read_config('thanks'))