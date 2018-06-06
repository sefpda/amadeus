class FullRange < ActiveRecord::Base
  has_many :sequenced_ranges
  has_many :playable_ranges, through: :sequenced_ranges

  def low_pitch
    playable_ranges.min_by {|a| a.low_pitch.hertz }.low_pitch
  end

  def high_pitch
    playable_ranges.max_by {|a| a.high_pitch.hertz }.high_pitch
  end

end
