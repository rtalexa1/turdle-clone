class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :chars, null: false

      t.timestamps
    end
  end
end
