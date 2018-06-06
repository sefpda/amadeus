class CreateModes < ActiveRecord::Migration
  def change
    create_table :modes do |t|
      t.string :name
      t.integer :step_sequence
    end
  end
end
