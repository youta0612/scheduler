class CreateMakedgames < ActiveRecord::Migration[5.1]
  def change
    create_table :makedgames do |t|
      t.integer :game_id
      t.integer :member_id
      t.datetime :date
      t.string :place

      t.timestamps
    end
  end
end
