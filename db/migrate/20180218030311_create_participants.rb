class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      t.integer :game_id
      t.integer :member_id
      t.boolean :participation_flag
      t.text :comment

      t.timestamps
    end
  end
end
