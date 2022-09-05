defmodule Drop do
  @spec fall_velocity(atom(), number()) :: float()

 def fall_velocity(planet_o, distance) when distance > 0 do
    gravity = case planet_o do
      :earth -> * 9.8
      :mars  -> 3.71
      :moon  -> 1.6
    end

   velocity = :math.sqrt(2 * 9.8 * gravity)

   if velocity > 20 do
    IO.puts("Look Below..!")
   else
    IO.puts("Resonable...")
   end
  end

  velocity
end
