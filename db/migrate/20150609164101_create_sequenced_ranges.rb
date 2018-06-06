class CreateSequencedRanges < ActiveRecord::Migration
  def change
    create_table :sequenced_ranges do |t|
      t.integer :playable_range_id
      t.integer :full_range_id
      t.integer :sequence
      t.string :name
    end
  end
end
