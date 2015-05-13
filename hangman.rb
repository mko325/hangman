# draw hanger and blanks for word
# make hangman body

def draw_man(wrong_guesses)
  if wrong_guesses == 0
    puts "_____________________"
    puts "|"
    puts "|"
    puts "|"
    puts "|"
    puts "|"
    puts "|"
    puts "-------"
  elsif wrong_guesses == 1
    puts "_____________________"
    puts "|         O"
    puts "|"
    puts "|"
    puts "|"
    puts "|"
    puts "|"
    puts "-------"
  elsif wrong_guesses == 2
    puts "_____________________"
    puts "|         O"
    puts "|         |"
    puts "|"
    puts "|"
    puts "|"
    puts "|"
    puts "-------"
  elsif wrong_guesses == 3
    puts "_____________________"
    puts "|         O"
    puts "|         |"
    puts "|         |"
    puts "|"
    puts "|"
    puts "|"
    puts "-------"
  elsif wrong_guesses == 4
    puts "_____________________"
    puts "|         O"
    puts "|        \\|"
    puts "|         |"
    puts "|"
    puts "|"
    puts "|"
    puts "-------"
  elsif wrong_guesses == 5
    puts "_____________________"
    puts "|         O"
    puts "|        \\|/"
    puts "|         |"
    puts "|"
    puts "|"
    puts "|"
    puts "-------"
  elsif wrong_guesses == 6
    puts "_____________________"
    puts "|         O"
    puts "|        \\|/"
    puts "|         |"
    puts "|        /"
    puts "|"
    puts "|"
    puts "-------"
  elsif wrong_guesses == 7
    puts "_____________________"
    puts "|         O"
    puts "|        \\|/"
    puts "|         |"
    puts "|        / \\ "
    puts "|"
    puts "|"
    puts "-------"
  end
end

def display_guess_progress(secret_word_array, letters_guessed)
  secret_word_array.each do |x|
    if (letters_guessed.include? x) == true
      print x
    elsif (letters_guessed.include? x) == false
      print " _ "
    end
  end
  puts
  puts "Letters Already Guessed:"
  puts letters_guessed.sort.join(",")
end

#get user to start game
puts "When ready, type start"
user_start = gets.chomp.downcase
if user_start  != "start"
  exit
end

#make array of secret word
secret_word = "programming"
secret_word_array = secret_word.split('')

letters_guessed = []
wrong_guesses = 0

# draw hanger and blanks for word
draw_man(0)
display_guess_progress(secret_word_array, letters_guessed)

while wrong_guesses < 7
  puts "Guess a letter"
  letter = gets.chomp
  letters_guessed.push(letter)
  if (secret_word_array.include? letter) == false
    wrong_guesses = wrong_guesses.to_i + 1
  end
  draw_man(wrong_guesses)
  display_guess_progress(secret_word_array, letters_guessed)
end

if wrong_guesses == 7
  puts "You lose!"
  print "The word was: "
  print secret_word
end