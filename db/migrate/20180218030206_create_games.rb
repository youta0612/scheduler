class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.datetime :date
      t.string :place
      t.string :opponent
      t.integer :team_id

      t.timestamps
    end
  end
end
