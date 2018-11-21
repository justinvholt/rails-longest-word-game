require "open-uri"
require "json"

# games controller
class GamesController < ApplicationController
  ALPHABET = ("A".."Z").to_a

  def new
    @letters = []
    10.times { @letters << ALPHABET.sample }
    @letters.flatten
  end

  def score
    word = params[:word]

    url = "https://wagon-dictionary.herokuapp.com/#{word}"
    file = JSON.parse(open(url).read)

    if file["found"] == true
      @score = "That's a word!"
    end

  end
end
