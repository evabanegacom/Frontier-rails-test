class CreatePlayerEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :player_events do |t|
      t.references :player, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
