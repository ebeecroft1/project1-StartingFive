class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.text :name
      t.text :position
      t.text :age
      t.text :height
      t.integer :weight
      t.float :points
      t.float :rebounds
      t.float :assists
      t.float :blocks
      t.float :steals
      t.text :college
      t.text :image

      t.timestamps
    end
  end
end
