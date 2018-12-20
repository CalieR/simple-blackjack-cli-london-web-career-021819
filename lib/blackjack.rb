require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  # if 'h' deal a new card and increment the players total
  if answer == "h"
    print "hit me"
    card_total += deal_card
  elsif answer == "s"
    print "stick"
    card_total
  # if not 'h' or 's' call invalid command and prompt_user
  else
    print "whoopsie"
    invalid_command
  end
end

#hit?(15)


def invalid_command
  puts "Please enter a valid command"
  prompt_user
  get_user_input
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

# TESTS ALL PASS BUT S STILL DEALS A CARD!!

def runner # enacts gameplay UNTIL card_total exceeds 21
  welcome
  score = initial_round # score after first 2 deals

  # deal new card and add to score until score > 21
  #new_score = 0 # initialise an empty counter to hold result of each loop

  until score > 21
     score = hit?(score) # increment new_score by the return value of calling hit?(score)
     display_card_total(score)
   end
  end_game(score)
end
