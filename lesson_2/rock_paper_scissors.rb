
OPTIONS = %w(r(rock) p(paper) sc(scissors) sp(spock) l(lizard))
VALID_CHOICES = %w(rock paper scissors spock lizard)

WINNING_PATTERNS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['scissors', 'rock'],
  'lizard' => ['paper', 'spock']
}

def prompt(message)
  puts "=> #{message}"
end

def convert_to_name(entry)
  case entry
  when 'r', 'rock'
    'rock'
  when 'p', 'paper'
    'paper'
  when 'sc', 'scissors'
    'scissors'
  when 'sp', 'spock'
    'spock'
  when 'l', 'lizard'
    'lizard'
  else
    'invalid'
  end
end

def display_result(choice, computer_choice)
  if choice == computer_choice
    prompt("It's a tie")
  elsif user_won?(choice, computer_choice)
    prompt('You won')
  else
    prompt('Computer won')
  end
end

def user_won?(choice, computer_choice)
  WINNING_PATTERNS[choice].include?(computer_choice)
end

loop do
  choice = ''

  loop do
    prompt("Choose one: #{OPTIONS.join(', ')}")
    choice = convert_to_name(gets.chomp.downcase)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That is not a valid choice. Please choose from r, p, sc, sp, l.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts("Your chose: #{choice}. Computer chose: #{computer_choice}")

  display_result(choice, computer_choice)

  prompt('Would you like to play another game? (y or n)')
  break unless gets.downcase.start_with?('y')
end

prompt('Thank you for playing.')
