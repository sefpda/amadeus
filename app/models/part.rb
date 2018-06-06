class Part < ActiveRecord::Base
  belongs_to :part_type

  def beats
    data.nil? ? [] : decrypted_beats
  end

  private

  def decrypted_beats
    raw_beats_array.map {|beat|
                                 { beat_number: decrypted_beat_number(beat),
                                   duration: decrypted_duration(beat),
                                   notes: decrypted_notes(beat) } }
  end

  def raw_beats_array
    data[/.*N@_(?<beat_array>.*)_/,'beat_array'].split(' ')
  end

  def decrypted_beat_number raw_beat
    raw_beat[/(?<number>.*)n.*/,'number'].to_f
  end

  def decrypted_duration raw_beat
    raw_beat.include?('^') ? raw_beat[/.*\^(?<duration>.*)n.*/,'duration'].to_f : 1
  end

  def decrypted_notes raw_beat
    raw_beat.scan(/n([0-9A-F]+)/).map {|i| Note.find(i.first.hex) }
  end

end