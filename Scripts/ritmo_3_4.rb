live_loop :ritmo_3_4 do
  with_fx :reverb,mix: 0.5,room: 0.8 do
    sample :drum_bass_hard
    sleep 1
    sample :drum_bass_soft
    sleep 0.5
    sample :drum_bass_soft
    sleep 0.5
    sleep 1 # Silencio en el tercer tiempo
  end
end

live_loop :ritmo_ do
  
  with_fx :reverb,mix: 0.5,room: 0.8 do
    sleep 1
    sample :drum_cymbal_pedal
    sleep 0.5
    sample :drum_cymbal_pedal
    sleep 0.5
    sleep 1 # Silencio en el tercer tiempo
  end
end