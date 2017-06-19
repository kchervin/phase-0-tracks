require_relative 'guess_game'

describe GuessGame do
let(:play) [GuessGame.new("apple")]

it "provides alphabet letter guesses" do
expect(play.get_user).to eq alphabet.sample
end

it "gets compares sample alphabet letter to letters of game word"
expect(play.compare).to eq (boolean)
end

it "determines if alphabet sample is not present and pushes sample letter into array of incorrect letters"
expect(play.incorrect).to eq (wrong_array=[])
end

it "determines the number of turns left" do
  expect (play.turns_left).to eq (total_guesses - guess_count)

it "shows string of game word as underscores unless guessed letter is present in game word" do
  expect(play.showstring).to eq ('_' * word.length)

end
end

