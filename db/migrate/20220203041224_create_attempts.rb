class CreateAttempts < ActiveRecord::Migration[6.1]
  def change
    create_table :attempts do |t|
      t.string :chars, null: false
      t.references :word, null: false
      t.references :game, null: false

      t.timestamps
    end
  end
end
