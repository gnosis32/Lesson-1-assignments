# Define skeleton, welcome message

OPTIONS = {'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors'}

puts "Lets play R,P,S"

#player hand, options and computer hand
loop do 
  begin
    puts "Pick r, p, s"
    player_hand = gets.chomp.downcase
  end until OPTIONS.keys.include?(player_hand)
puts "lets play"


computer_hand = OPTIONS.keys.sample

if
  player_hand == computer_hand
  puts "Tie, input again"
elsif
  (computer_hand == 'r' && player_hand == 's') || (computer_hand == 'p' && player_hand == 'r') || (computer_hand == 's' && player_hand == 'p')
  puts "Computer Won!"
else
  puts "You Won!"
end
puts "Play again? (Y/N)"
break if gets.chomp.downcase != "y"
end
puts "See you next time!"
 



    







  





