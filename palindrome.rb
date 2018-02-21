def opening
  puts "What would you like to do today?"
  puts "1) Test a palindrome"
  puts "2) Test all combos"
  puts ""
  response = gets.to_i
  case response
  when 1
    palindrome
  when 2
    combos
  else
    opening
  end
end

def palindrome
  print  `clear`
  puts "Go ahead and try and make a palindrome."
  guess = gets.strip.downcase.scan /\w/
  clone = guess
  answer = clone.reverse
  if answer == guess
    puts "Huzzah! You made a palindrome!"
  else
    puts "Boo! You Fail!"
  end
 opening
end

def combos
  print `clear`
  puts "Type something to get all possible combos"
  answer = gets.strip.downcase.scan /\w/
  puts answer.permutation.map(&:join)
  opening
end

opening
