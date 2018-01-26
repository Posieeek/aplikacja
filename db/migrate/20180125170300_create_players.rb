class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :lastname
      t.integer :goals
      t.string :worth
      t.integer :club_id
      t.references :club, foreign_key: true
      t.timestamps
    end
    add_index :players, [:club_id, :created_at]
  end
end
