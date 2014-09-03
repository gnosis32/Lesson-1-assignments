#Game skeleton with commands. 
#1. Cards calculation method.
#2. Welcome message
#3. Card shuffle.

def custom_name
  puts "Please enter your name -"
  name_input = gets.chomp
  puts "Welcome #{name_input}"
  name_input
end
  
def card_total (cards)
  arr = cards.map {|c| c[1]}
  total = 0
  arr.each do |v|
    if  v == "A"
      total += 11
    elsif value.to_i == 0 
      total += 10
    else
      total += value.to_i
    end
  end

  
  arr.select {|ace| ace == "A"}.counts.times.do 
    total -= 10 if total > 21
  end
  total
end

puts "Welcome to Blackjack 2014!"
input_name = custom_name

suits = ['of Hearts', 'of Spades', 'of Clubs','of Diamonds'] 
cards = ['2','3','4','5','6','7','8','9','10','Jack','Queen','King','Ace'] 
playing_deck = cards.product(suits) * 4
playing_deck.shuffle!

#Player and dealer interaction commands. 
#1 - Saving and displaying cards. 
player_cards = []
house_cards = []
  player_cards << playing_deck.pop
  house_cards << playing_deck.pop

  player_total = card_total(player_cards)
  house_total = card_total(house_cards)
  
  # Display of cards
puts "Your current hand: #{player_cards[0][1]}. Total:#{player_total}"
puts "House current hand: #{house_cards[0][1]}. Total:#{house_total}"
puts "Your turn - 1) Hit, 2) Stay"
action = gets.chomp

#Player hand display message in this order ==21, <21, stay, hit commands, comparing hands
if player_total == 21
  puts "Blackjack!"
  exit
end

while player_total < 21
  puts "1) Hit, 2) Stay"
  action = gets.chomp.to_i
  if action == 0
    puts "Error: Enter 1 or 2"
    next
  end
  
  if action == "2"
    puts "Please wait..."
    break
  end
  
  next_hand = card.pop
  puts "#{next_hand}"
  player_cards << next_hand
  player_total = card_total(player_cards)
  puts "#{player_total}"
  
  if player_total == 21
    puts "Blackjack!"
    exit
  elsif player_total > 21
      puts "Busted!"
      exit
  end
end


if house_total == 21
  puts "You lose, house win"
  exit
end

while house_total < 17
  next_hand = card.pop
  puts "#{next_hand}"
  house_cards << next_hand
  house_total = card_total(house_cards)
  puts "#{house_total}"
  
  if house_total == 21
    puts "You lose, house win"
    exit
  elsif house_total > 21
    puts "You win, house busted"
    exit
  end
end

puts "Player cards - "
player_cards.each do |x|
  puts "#{x}"
end

puts "------------------"

puts "House cards - "
house_cards.each do |x|
  puts "#{x}"
end

puts "------------------"

if house_cards > player_cards
  puts "You lose, house win"
  exit
elsif house_cards < player_cards
  puts "You win"
else
  puts "Tie"
end
exit