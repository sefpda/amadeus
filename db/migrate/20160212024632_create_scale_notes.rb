class CreateScaleNotes < ActiveRecord::Migration
  def change
    create_table :scale_notes do |t|
      t.string :pitch_family
      t.integer :modifier
    end
  end
end
