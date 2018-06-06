class SequencedRange < ActiveRecord::Base
  belongs_to :playable_range
  belongs_to :full_range
end
