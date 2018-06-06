class AddPartTypeToParts < ActiveRecord::Migration
  def change
    add_column :parts, :part_type_id, :integer
    add_foreign_key :parts, :part_types
  end
end
