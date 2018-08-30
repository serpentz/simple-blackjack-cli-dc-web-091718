def welcome
  # code #welcome here
  puts"Welcome to the Blackjack Table"
end
 def deal_card
  # code #deal_card here
  Random.rand(11) + 1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end
 def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end
 def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end
 def initial_round
  # code #initial_round here
  initial_round = deal_card + deal_card
  display_card_total(initial_round)
  initial_round
end

def hit?(number)
  # code hit? here
  prompt_user
  answer = get_user_input
  until answer  == 'h' || answer  == 's'
    invalid_command
    prompt_user
    answer = get_user_input
  end
  if answer  == 'h'
    number += deal_card
  elsif answer =='s'
    number
  end
end
 def invalid_command
  # code invalid_command here
  puts "invalid Command"
end

 def runner
  # code runner here
  game = blackjack.new
  game.welcome
card_total = game.initial_round

  until card_total >21
    card_total = hit?(card_total)
    display_card_total(card_total)
  end


endgame(card_total)
 end
