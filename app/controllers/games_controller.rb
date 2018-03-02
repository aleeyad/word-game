class GamesController < ApplicationController
  def new
    @alphabet = ("A".."Z").to_a
    @vowels = ["A", "E", "I", "O", "U"]
    @letters = Array.new(5) {@vowels.sample}
    @letters += Array.new(5) {(@alphabet - @vowels).sample}
    @letters = @letters.join.gsub("", " ")

  end

  def score
  end
end
