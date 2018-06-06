require 'spec_helper'

RSpec.describe Part do
  fixtures :parts
  
  let(:unencrypted_part) { 
    { notes:
          [
            # MEASURE ONE
            { beat: 1,    notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            { beat: 2,    notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            { beat: 3,    notes: [ { note: 98,  duration: 0.5 },    # G4
                                   { note: 104, duration: 0.5 },    # B4
                                   { note: 89,  duration: 0.5 } ]   # D4
            },
            { beat: 3.5,  notes: [ { note: 107, duration: 0.5 } ]   # C5
            },
            { beat: 4,    notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            # MEASURE TWO
            { beat: 5,    notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 } ]     # B Flat 4
            },
            { beat: 6,    notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 } ]     # B Flat 4
            },
            { beat: 7,    notes: [ { note: 86,  duration: 0.5 },    # C4
                                   { note: 92,  duration: 0.5 },    # E4
                                   { note: 98,  duration: 0.5 },    # G4
                                   { note: 104, duration: 0.5 } ]   # B Flat 4
            },
            { beat: 7.5,  notes: [ { note: 107, duration: 0.5 } ]   # C5
            },
            { beat: 8,    notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 } ]     # B Flat 4
            },
            # MEASURE THREE
            { beat: 9,    notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            { beat: 10,   notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            { beat: 11,   notes: [ { note: 98,  duration: 0.5 },    # G4
                                   { note: 104, duration: 0.5 },    # B4
                                   { note: 89,  duration: 0.5 } ]   # D4
            },
            { beat: 11.5, notes: [ { note: 107, duration: 0.5 } ]   # C5
            },
            { beat: 12,   notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            # MEASURE FOUR
            { beat: 13,   notes: [ { note: 89,  duration: 1 },      # D4
                                   { note: 95,  duration: 1 },      # F4
                                   { note: 104, duration: 1 } ]     # B4
            },
            { beat: 14,   notes: [ { note: 89,  duration: 1 },      # D4
                                   { note: 95,  duration: 1 },      # F4
                                   { note: 104, duration: 1 } ]     # B4
            },
            { beat: 15,   notes: [ { note: 89,  duration: 0.5 },    # D4
                                   { note: 95,  duration: 0.5 },    # F4
                                   { note: 104, duration: 0.5 } ]   # B4
            },
            { beat: 15.5, notes: [ { note: 107, duration: 0.5 } ]   # C5
            },
            { beat: 16,   notes: [ { note: 89,  duration: 1 },      # D4
                                   { note: 95,  duration: 1 },      # F4
                                   { note: 104, duration: 1 } ]     # B4
            },
            # MEASURE FIVE
            { beat: 17,   notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 } ]     # B Flat 4
            },
            { beat: 18,   notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 } ]     # B Flat 4
            },
            { beat: 19,   notes: [ { note: 86,  duration: 0.5 },    # C4
                                   { note: 92,  duration: 0.5 },    # E4
                                   { note: 98,  duration: 0.5 },    # G4
                                   { note: 104, duration: 0.5 } ]   # B Flat 4
            },
            { beat: 19.5, notes: [ { note: 107, duration: 0.5 } ]   # C5
            },
            { beat: 20,   notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 } ]     # B Flat 4
            },
            # MEASURE SIX
            { beat: 21,   notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 } ]     # B Flat 4
            },
            { beat: 22,   notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 } ]     # B Flat 4
            },
            { beat: 23,   notes: [ { note: 86,  duration: 0.5 },    # C4
                                   { note: 92,  duration: 0.5 },    # E4
                                   { note: 98,  duration: 0.5 },    # G4
                                   { note: 104, duration: 0.5 } ]   # B Flat 4
            },
            { beat: 23.5, notes: [ { note: 107, duration: 0.5 } ]   # C5
            },
            { beat: 24,   notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 } ]     # B Flat 4
            },
            # MEASURE SEVEN
            { beat: 25,   notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            { beat: 26,   notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            { beat: 27,   notes: [ { note: 98,  duration: 0.5 },    # G4
                                   { note: 104, duration: 0.5 },    # B4
                                   { note: 89,  duration: 0.5 } ]   # D4
            },
            { beat: 27.5, notes: [ { note: 107, duration: 0.5 } ]   # C5
            },
            { beat: 28,   notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            # MEASURE EIGHT
            { beat: 29,   notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            { beat: 30,   notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            { beat: 31,   notes: [ { note: 98,  duration: 0.5 },    # G4
                                   { note: 104, duration: 0.5 },    # B4
                                   { note: 89,  duration: 0.5 } ]   # D4
            },
            { beat: 31.5, notes: [ { note: 107, duration: 0.5 } ]   # C5
            },
            { beat: 32,   notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            # MEASURE NINE
            { beat: 33,   notes: [ { note: 89,  duration: 1 },      # D4
                                   { note: 96,  duration: 1 },      # F Sharp 4
                                   { note: 110, duration: 1 } ]     # D5
            },
            { beat: 34,   notes: [ { note: 89,  duration: 1 },      # D4
                                   { note: 96,  duration: 1 },      # F Sharp 4
                                   { note: 110, duration: 1 } ]     # D5
            },
            { beat: 35,   notes: [ { note: 89,  duration: 0.5 },    # D4
                                   { note: 96,  duration: 0.5 },    # F Sharp 4
                                   { note: 110, duration: 0.5 } ]   # D5
            },
            { beat: 35.5, notes: [ { note: 110, duration: 0.5 } ]   # D5
            },
            { beat: 36,   notes: [ { note: 108, duration: 1 } ]     # C Sharp 5
            },
            # MEASURE TEN
            { beat: 37,   notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 107, duration: 1 } ]     # C5
            },
            { beat: 38,   notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 107, duration: 1 } ]     # C5
            },
            { beat: 39,   notes: [ { note: 86,  duration: 0.5 },    # C4
                                   { note: 92,  duration: 0.5 },    # E4
                                   { note: 98,  duration: 0.5 },    # G4
                                   { note: 107, duration: 0.5 } ]   # C5
            },
            { beat: 39.5, notes: [ { note: 107, duration: 0.5 } ]   # C5
            },
            { beat: 40,   notes: [ { note: 86,  duration: 1 },      # C4
                                   { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 } ]     # B Flat 4
            },
            # MEASURE ELEVEN
            { beat: 41,   notes: [ { note: 98,  duration: 1 },      # G4
                                   { note: 104, duration: 1 },      # B4
                                   { note: 89,  duration: 1 } ]     # D4
            },
            { beat: 42,   notes: [ { note: 95,  duration: 1 },      # F4
                                   { note: 100, duration: 1 },      # A Flat 4
                                   { note: 110, duration: 1 } ]     # D5
            },
            { beat: 43,   notes: [ { note: 92,  duration: 1 },      # E4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 108, duration: 1 } ]     # C Sharp 5
            },
            { beat: 44,   notes: [ { note: 91,  duration: 1 },      # E Flat 4
                                   { note: 98,  duration: 1 },      # G4
                                   { note: 107, duration: 1 } ]     # C5
            },
            # MEASURE TWELVE
            { beat: 45,   notes: [ { note: 89,  duration: 4 },      # D4
                                   { note: 98,  duration: 4 },      # G4
                                   { note: 104, duration: 4 } ]     # B4
            }
          ]
    }
  }

  describe "beats" do

    it "should return the notes arranged by beat in ruby format" do
      part = build(:ukulele_blues_part)

      beats = part.beats
      expect(beats.length).to eq(55)

      beat1 = beats.first
      expect(beat1[:beat_number]).to eq(1)
      expect(beat1[:duration]).to eq(1)
      notes1 = beat1[:notes]
      expect(notes1.length).to eq(3)
      expect(notes1.first).to eq(Note.find(89))

      beat3_5 = beats[3]
      expect(beat3_5[:beat_number]).to eq(3.5)
      expect(beat3_5[:duration]).to eq(0.5)
      notes3_5 = beat3_5[:notes]
      expect(notes3_5.length).to eq(1)
      expect(notes3_5.first).to eq(Note.find(107))

      beat_nineteen = beats[19]
      expect(beat_nineteen[:beat_number]).to eq(16)
      expect(beat_nineteen[:duration]).to eq(1)
      notes_nineteen = beat_nineteen[:notes]
      expect(notes_nineteen.length).to eq(3)
      expect(notes_nineteen.first).to eq(Note.find(89))

      beat_twenty_four = beats[24]
      expect(beat_twenty_four[:beat_number]).to eq(20)
      expect(beat_twenty_four[:duration]).to eq(1)
      notes_twenty_four = beat_twenty_four[:notes]
      expect(notes_twenty_four.length).to eq(4)
      expect(notes_twenty_four.first).to eq(Note.find(86))

      beat_twenty_nine = beats[29]
      expect(beat_twenty_nine[:beat_number]).to eq(24)
      expect(beat_twenty_nine[:duration]).to eq(1)
      notes_twenty_nine = beat_twenty_nine[:notes]
      expect(notes_twenty_nine.length).to eq(4)
      expect(notes_twenty_nine.first).to eq(Note.find(86))

      beat_thirty_four = beats[34]
      expect(beat_thirty_four[:beat_number]).to eq(28)
      expect(beat_thirty_four[:duration]).to eq(1)
      notes_thirty_four = beat_thirty_four[:notes]
      expect(notes_thirty_four.length).to eq(3)
      expect(notes_thirty_four.first).to eq(Note.find(89))

      beat_thirty_nine = beats[39]
      expect(beat_thirty_nine[:beat_number]).to eq(32)
      expect(beat_thirty_nine[:duration]).to eq(1)
      notes_thirty_nine = beat_thirty_nine[:notes]
      expect(notes_thirty_nine.length).to eq(3)
      expect(notes_thirty_nine.first).to eq(Note.find(89))

      beat_forty_four = beats[44]
      expect(beat_forty_four[:beat_number]).to eq(36)
      expect(beat_forty_four[:duration]).to eq(1)
      notes_forty_four = beat_forty_four[:notes]
      expect(notes_forty_four.length).to eq(1)
      expect(notes_forty_four.first).to eq(Note.find(108))

      beat_forty_nine = beats[49]
      expect(beat_forty_nine[:beat_number]).to eq(40)
      expect(beat_forty_nine[:duration]).to eq(1)
      notes_forty_nine = beat_forty_nine[:notes]
      expect(notes_forty_nine.length).to eq(4)
      expect(notes_forty_nine.first).to eq(Note.find(86))

      beat_fifty_three = beats[53]
      expect(beat_fifty_three[:beat_number]).to eq(44)
      expect(beat_fifty_three[:duration]).to eq(1)
      notes_fifty_three = beat_fifty_three[:notes]
      expect(notes_fifty_three.length).to eq(3)
      expect(notes_fifty_three.first).to eq(Note.find(91))

      beat_fifty_four = beats[54]
      expect(beat_fifty_four[:beat_number]).to eq(45)
      expect(beat_fifty_four[:duration]).to eq(4)
      notes_fifty_four = beat_fifty_four[:notes]
      expect(notes_fifty_four.length).to eq(3)
      expect(notes_fifty_four.first).to eq(Note.find(89))
    end

    it "should return something sensible for empty data" do
      part = Part.new

      beats = part.beats
      expect(beats).to be_empty
    end

    it "should return something sensible for data with no notes" do
      part = build(:part)

      beats = part.beats
      expect(beats).to be_empty
    end

  end
  
end