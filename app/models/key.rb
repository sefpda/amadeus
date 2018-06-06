class Key < ActiveRecord::Base
  belongs_to :mode
  belongs_to :scale_note
end
