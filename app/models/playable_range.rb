class PlayableRange < ActiveRecord::Base
  belongs_to :low_pitch, class_name: 'Pitch', foreign_key: 'low_pitch_id'
  belongs_to :high_pitch, class_name: 'Pitch', foreign_key: 'high_pitch_id'
end
