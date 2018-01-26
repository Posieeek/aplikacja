class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :league
      t.integer :place
      t.integer :budget

      t.timestamps
    end
  end
end
