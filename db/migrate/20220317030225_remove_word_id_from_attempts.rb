class RemoveWordIdFromAttempts < ActiveRecord::Migration[6.1]
  def change
    remove_column :attempts, :word_id
  end
end
