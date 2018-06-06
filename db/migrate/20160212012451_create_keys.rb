class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.belongs_to :mode, index: true
    end
  end
end
