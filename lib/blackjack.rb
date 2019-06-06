def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  return 1 + rand(11)
end

def display_card_total (card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts  "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  one = deal_card
  two = deal_card
  sum = one + two
  display_card_total (sum)
  return sum
end

def hit? (total)
  prompt_user
  answer = get_user_input

   case answer
   when "s"
     return total
   when "h"
     return (total + deal_card)
   else
     invalid_command
     prompt_user
   end
  return total
end


def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome

  total = initial_round
  until total > 21
    total = hit? (total)
    display_card_total (total)
  end
  end_game (total)
end
