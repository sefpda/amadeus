class CreatePlayableRanges < ActiveRecord::Migration
  def change
    create_table :playable_ranges do |t|
      t.integer :low_pitch_id
      t.integer :high_pitch_id
    end
  end
end
