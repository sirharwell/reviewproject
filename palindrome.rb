require 'prime'

def opening
  puts "What would you like to do?"
  puts "1) Test a palindrome"
  puts "2) Test all combinations of a word"
  puts "3) Alphabeticalize it"
  puts "4) Uppercase first letter"
  puts "5) What's the longest word?"
  puts "6) How many vowels?"
  puts "7) Is it prime?"
  puts "8) How man of a letter?"
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
  when 5
    longest
  when 6
    vowels
  when 7
    prime
  when 8
    muymucho
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

def longest
  print `clear`
  puts "Type away"
  answer = gets.strip.split
  puts answer.sort_by!(&:length).pop
  puts ""
  opening
end

def vowels
  print `clear`
  puts "Type away"
  answer = gets.downcase.scan(/[aeiou]/).count
  puts answer
  opening
end

def prime
  print `clear`
  puts "Type away"
  answer = gets.to_i
  puts Prime.prime?(answer)
  puts ''
  opening
end

def muymucho
  print `clear`
  puts "Which Character?"
  which = gets.downcase
  puts "Type the sentence"
  answer = gets.downcase.scan(/[#{which}]/).count
  puts answer-1
  puts ""
  opening
end

opening
