class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.belongs_to :pitch, index: true
      t.belongs_to :scale_note
    end
  end
end
