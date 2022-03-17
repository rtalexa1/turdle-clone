require "pry"

class GamesController < ApplicationController
  def new
    game_id = session[:game_id]

    if game_id.present?
      game = Game.find(game_id)
    else
      game = Game.create(word_id: 1)
      session[:game_id] = game.id
    end

    game.attempts
    # think of session as session = {}
    # session becomes {game_id: 9}
  end
end
