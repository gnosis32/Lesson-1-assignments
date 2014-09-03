def prompt(input)
  puts ">>>>> #{input}<<<<<"
end
   
def add (a,b)
  puts a + b
end

def minus (a,b)
  puts a - b
end

def multiply (a,b)
  puts a * b
end

def divide (a,b)
  puts a / b
end

loop do 
  begin
    
prompt "Enter first number"
input1 = gets.chomp

prompt "Enter second number"
input2 = gets.chomp

prompt "Choose number for command. 1) +, 2) - 3) * 4) / "
input3 = gets.chomp
     
case 
  when
  input3 == "1"
  add(input1.to_i, input2.to_i)
  when
  input3 == "2"
  minus(input1.to_i, input2.to_i)
  when
  input3 == "3"
  multiply(input1.to_i, input2.to_i)
else
  input3 == "4"
  divide(input1.to_f, input2.to_f)
end
   
puts "More calculations? (Y/N)"
    unless gets.chomp.downcase == 'y'
      puts "Bye!"
      break
    end
  end
end
