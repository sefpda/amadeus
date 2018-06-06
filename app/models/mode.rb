class Mode < ActiveRecord::Base
  has_many :keys

  def self.major
    where(name: "Major").first
  end

  def self.minor
    where(name: "Minor").first
  end

  def steps
    "%07b" % self.step_sequence
  end

end
