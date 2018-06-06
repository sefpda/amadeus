class CreateFullRanges < ActiveRecord::Migration
  def change
    create_table :full_ranges do |t|
      t.string :name
    end
  end
end
