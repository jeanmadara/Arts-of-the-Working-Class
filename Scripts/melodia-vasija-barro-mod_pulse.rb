live_loop :melodia do
  use_bpm 80
  use_synth :mod_pulse
  use_synth_defaults cutoff: 80, sub_detune: -24, amp: 0.7
  sleep 3
  play_pattern_timed [:a4, :e5,:a5, :e4,], [1, 0.5,1, 0.5]
  2.times do |i|
    play_pattern_timed [:a4, :a4, :b4, :c4, :d4], [0.5, 0.5, 0.5, 0.5, 1]
    play_pattern_timed [:a4, :a4, :r, :g5, :e5], [0.5, 1, 0.5, 0.5, 0.5]
    play_pattern_timed [:e5, :d4, :c4, :d4], [1, 0.5, 0.5, 1]
    if i == 0
      play_pattern_timed [:a4, :a4, :e4], [0.5, 2, 0.5]
    else
      play_pattern_timed [:a4, :a4, :r, :c4, :d4], [0.5, 1, 0.5, 0.5, 0.5]
    end
  end
  2.times do |i|
    play_pattern_timed [:e5, :e5, :g5, :g5], [ 1, 0.5,1, 0.5]
    play_pattern_timed [:a5, :e5, :r, :g5, :e5], [0.5, 1, 0.5, 0.5, 0.5]
    play_pattern_timed [:e5, :d4, :c4, :d4], [1, 0.5, 0.5, 1]
    if i == 0
      play_pattern_timed [:a4, :a4, :r, :c4, :d4], [0.5, 1, 0.5, 0.5,0.5]
    else
      play_pattern_timed [:a4, :a4, :r, :e4], [0.5, 1.5, 0.5, 0.5]
    end
  end
  #B
  2.times do |i|
    play_pattern_timed [:a5, :a5, :g5, :a5, :g5], [ 0.5,0.5, 0.5,1, 0.5]
    play_pattern_timed [:a5, :a5, :a5, :g5], [0.5, 1, 1, 0.5]
    play_pattern_timed [:a5, :a5, :g5, :a5, :g5], [0.5,0.5, 0.5,1, 0.5]
    if i == 0
      play_pattern_timed [:a5, :g5, :e5], [0.5, 2,0.5]
    else
      play_pattern_timed [:a5, :g5, :r, :c4, :d4], [0.5, 1, 0.5, 0.5, 0.5]
    end
  end
  2.times do |i|
    play_pattern_timed [:e5, :g5, :g5, :g5], [ 1,0.5, 1, 0.5]
    play_pattern_timed [:a5, :e5,:r, :g5, :e5], [0.5, 1, 0.5,0.5, 0.5]
    play_pattern_timed [:e5, :d4, :c4, :d4], [1, 0.5, 1, 0.5]
    if i == 0
      play_pattern_timed [:a4, :a4, :r, :c4, :d4], [0.5, 1, 0.5, 0.5, 0.5]
    else
      play_pattern_timed [:a4, :a4, :r], [0.5, 2, 0.5]
    end
  end
end

