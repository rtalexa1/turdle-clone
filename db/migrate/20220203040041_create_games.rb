class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.datetime :ended_at
      t.timestamps
    end
  end
end
