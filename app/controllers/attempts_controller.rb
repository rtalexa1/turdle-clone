class AttemptsController < ApplicationController
  def create
    # create an attempt based on the current game and other data
    game_id = session[:game_id]
    game = Game.find(game_id)
    chars = attempts_params.to_h.values.join
    Attempt.create(game: game, chars: chars)
  end

  private

  def attempts_params
    params.permit(:char1, :char2, :char3, :char4, :char5)
  end
end
