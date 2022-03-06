class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :location
      t.string :handicap

      t.timestamps
    end
  end
end
