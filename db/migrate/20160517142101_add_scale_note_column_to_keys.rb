class AddScaleNoteColumnToKeys < ActiveRecord::Migration
  def change
    add_column :keys, :scale_note_id, :int
  end
end
