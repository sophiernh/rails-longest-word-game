class GamesController < ApplicationController
  def new
    @alphabet = ('A'..'Z').to_a
    @letters = @alphabet.sample(10)
  end

  def score
    # Receive the answer of the user
    # and split the word into an array of letter
    @answer = params[:letter]

    # Create a method for each scenario

    # The word can’t be built out of the original grid ❌
    # the array from answer must be from the array of @letters
    # if not, it returs "Sorry but #{@answer} can't be build from #{@letters}"
    # "Sorry but #{@word} can't be build from #{@letters}"


    # The word is valid according to the grid, but is not a valid English word ❌ (use API)
    #
    elsif params[:letter]
      "Sorry but #{@word} does not seem to be a valid English word"
    # The word is valid according to the grid and is an English word ✅ (use API)
    else params[:letter]

  end
end
