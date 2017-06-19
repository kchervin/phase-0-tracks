#create a class for a word guessing game that meets
class GuessGame
end
##introduce a first user guess on initilization for a second user to try to guess.
def initialize(user_1)
  @user_1 = user_1
  @user_1_array = user_1.split('')
  @current_dash_appearance = ''
  @user_2 = ''
  @guess_count = 0
  @game_over = false
  @total_guesses = user_1.length
  wrong_letters = []
end
#create a method for a second user to input letters to guess the user 1 word. code will take sample of letter from alphabet array and output will be a letter string.
def get_user2
  alphabet = ('a'..'z').to_a
  @user_2 = alphabet.sample
end
#guesses are limited to the number of letters in the user 1 word.  the incorrect guesses will be stored in an array.  if the user correctly guesses a letter, the count will add one to the count.
def correct
        if @user_1_array.include? user_2
            correct == true
        else
            correct ==  false
        end
end
#if the user incorrectly guesses a letter that was not guessed before, the count will add one.  if the user guesses a letter that was already guessed, the count will add 0.
def incorrect
  if !@user_1_array.include? user_2
    correct == false
            wrong_letters << user_2
  end
end

#determine number of turns left
def turns_left
  turns_left = @total_guesses - @guess_count
end

#The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".

def show_string(user_1, user_2)
  display_string = ''
  user_1.chars.each do |letter|
    if user_2.include?(letter)
      display_string << letter
    else
      display_string << ' _ '
    end
    end
  @current_dash_appearance = display_string
end
end

play = GuessGame.new("apple")

#create parting method reflecting if game was won or lost
if (@total_guesses == @guess_count) && (@current_dash_appearance  != @user_1)
   @game_over == true
    puts "sorry, you lost."
  elsif @total_guesses != @guess_count  && @current_dash_appearance  == @user_1
    @game_over == true
    puts "winner!"
  end
#guesses in the game are limited to the number of letters in the length of the word. if the player guesses the correct letter, count goes up.  if the player guesses an incorrect letter, the count goes up.  if the player guesses a letter that is not correct but has been guessed before, the count does not go up. show turns left and string of correctly guessed letters.
while @game_over == false
  puts "guess first letter"
   play.get_user2
       if play.correct
         puts "The letter was found."
         guess_count += 1
       elsif
         play.incorrect
         puts "Sorry, that letter is not correct."
         guess_count += 1
       elsif
        !play.correct && !play.incorrect
       end
      play.turns_left
      play.show_string
end