require 'rails_helper'

RSpec.describe Mode, type: :model do
  
  context "in Major" do

    it "should produce the proper tone steps" do
      seq = Mode.major.steps
      expect(seq).to eq "1101110"
    end

  end

  context "in Minor" do

    it "should produce the proper tone steps" do
      seq = Mode.minor.steps
      expect(seq).to eq "1011011"
    end

  end

end
