require "game.rb"

class GamesController < ApplicationController

  def game
    @grid = generate_grid(10).join(" ")
  end

  def score
    @result = run_game(params[:attempt], params[:grid].split(" "), Time.now, Time.now)
  end
end
