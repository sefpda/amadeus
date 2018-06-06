class CreatePitches < ActiveRecord::Migration
  def change
    create_table :pitches do |t|
      t.float :hertz, index: true, null: false
    end
  end
end
