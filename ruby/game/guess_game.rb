class GuessGame
end

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

def get_user2
  alphabet = ('a'..'z').to_a
  @user_2 = alphabet.sample
end

def correct
        if @user_1_array.include? user_2
            correct == true
        else
            correct ==  false
        end
end

def incorrect
  if !@user_1_array.include? user_2
    correct == false
            wrong_letters << user_2
  end
end

def turns_left
  @turns_left = @total_guesses - @guess_count
end

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


if (@total_guesses == @guess_count) && (@current_dash_appearance  != @user_1)
   @game_over == true
    puts "sorry, you lost."
  elsif @total_guesses != @guess_count  && @current_dash_appearance  == @user_1
    @game_over == true
    puts "winner!"
  end

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