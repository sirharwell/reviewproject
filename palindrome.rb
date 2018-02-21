def input
  print  `clear`
  puts "Go ahead and try and make a palindrome."
  @guess = gets.strip.downcase.scan /\w/
  @clone = @guess
  @answer = @clone.reverse
  output
end

def output
  if @answer == @guess
    puts "Huzzah! You made a palindrome!"
  else
    puts "Boo! You Fail!"
  end
 tryagain
end

def tryagain
  puts "Do you want to try another one?"
  response = gets.strip.downcase
  if response == "yes" || response == "y"
    input
  else
    exit
  end
end

input
