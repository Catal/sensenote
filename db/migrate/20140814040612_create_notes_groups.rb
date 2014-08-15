class CreateNotesGroups < ActiveRecord::Migration
  def change
    create_table :notes_groups do |t|
      t.integer :note_id
      t.integer :group_id

      t.timestamps
    end
  end
end
