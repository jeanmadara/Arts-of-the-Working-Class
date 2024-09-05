use_bpm 120  # Establece el tempo base

# Captura la entrada de audio de la melódica
live_audio :melodica_input, input: 1  # Asegúrate de seleccionar el canal correcto de entrada de audio

live_loop :melodica_ewi do
  # Procesa la señal de la melódica con efectos para un sonido estilo EWI
  with_fx :reverb, room: 0.8, mix: 0.5 do
    with_fx :bitcrusher, bits: 8 do
      with_fx :distortion, distort: 0.6 do
        with_fx :flanger, phase: 0.5, wave: 1, mix: 0.5 do
          with_fx :slicer, phase: 0.25, wave: 0, amp: 1.2 do
            live_audio :melodica_input  # Reproduce la entrada de audio procesada
          end
        end
      end
    end
  end
  sleep 1  # Añade una pausa para sincronizar los efectos
end
