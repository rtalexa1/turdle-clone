class AddWordIdToGames < ActiveRecord::Migration[6.1]
  def change
    add_reference :games, :word, null: false
  end
end
