def opening
  puts "What would you like to do?"
  puts "1) Test a palindrome"
  puts "2) Test all combinations of a word"
  puts "3) Alphabeticalize it"
  puts "4) Uppercase first letter"
  puts ""
  response = gets.to_i
  case response
  when 1
    palindrome
  when 2
    combos
  when 3
    alphabeticalize
  when 4
    uppercase
  else
    exit
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
  puts ""
 opening
end

def combos
  print `clear`
  puts "Type something to get all possible combos"
  answer = gets.strip.downcase.scan /\w/
  puts answer.permutation.map(&:join)
  puts ""
  opening
end

def alphabeticalize
  print `clear`
  puts "Type away"
  answer = gets.strip.downcase.scan /\w/
  puts answer.sort.join
  puts ''
  opening
end

def uppercase
  print `clear`
  puts "Type away"
  answer = gets.strip
  puts answer.split(' ').map {|w| w.capitalize }.join(' ')
  puts ''
  opening
end
opening
