require 'rails_helper'

RSpec.describe ScaleNote, type: :model do
  
  describe "#label" do

    it "should reflect the name of the pitch family" do
      expect(scale_note("A").label).to eq "A"
    end

    it "should handle flats" do
      expect(scale_note("B", -1).label).to eq "B flat"
    end

    it "should handle sharps" do
      expect(scale_note("C", 1).label).to eq "C sharp"
    end

  end

  describe "#modifier_type" do

    it "should handle natural" do
      expect(scale_note("D").modifier_type).to eq "natural"
    end

    it "should handle sharp" do
      expect(scale_note("E", 1).modifier_type).to eq "sharp"
    end

    it "should handle flat" do
      expect(scale_note("F", -1).modifier_type).to eq "flat"
    end

  end

  def scale_note family, modifier = 0
    ScaleNote.find_by_pitch_family_and_modifier(family, modifier)
  end

end
