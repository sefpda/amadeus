require 'rails_helper'

RSpec.describe FullRange, type: :model do

  let(:subject) { FullRange.find 1 }
  
  describe '.low_pitch' do

    it 'should return the lowest pitch in the avaiable ranges' do
      expect(subject.low_pitch).to eq(Pitch.find_by(hertz: 261.630))
    end
    
  end

  describe '.high_pitch' do

    it 'should return the highest pitch in the avaiable ranges' do
      expect(subject.high_pitch).to eq(Pitch.find_by(hertz: 880.000))
    end
    
  end

end
