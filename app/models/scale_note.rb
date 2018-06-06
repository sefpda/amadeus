class ScaleNote < ActiveRecord::Base
  has_many :keys

  def label
    return "#{pitch_family} #{modifier_type}" unless modifier == 0
    pitch_family
  end

  def modifier_type
    case modifier
    when -1
      "flat"
    when 1
      "sharp"
    else
      "natural"
    end
  end

end
