defmodule Drop do
    # using tuple and what is called destruction
    @spec fall_velocity(tuple()) :: float()

  def fall_velocity(where) do
    {o_name, dist} = where
    fall_velocity(o_name, dist) |> Abs.absolute_value
  end

  defp fall_velocity(planeto, distance) do
      :math.sqrt(2 * 9.8 * distance)
  end
end

defmodule Abs do
  @spec absolute_value(float())) :: float()

  def absolute_value(value) where value < 0 do
    -value
  end
end

defmodule DropCase do
  @spec fall_velocity(atom(), number()) :: float()

  def fall_velocity(planet_o, distance) when distance > 0 do
    case planet_o do
      :earth -> :math.sqrt(2 * 9.8 * distance)
      :mars  -> :math.sqrt(2 * 3.71 * distance)
      :moon  -> :math.sqrt(2 * 1.6 * distance)
    end
  end

 def fall_velocity(planet_o, distance) when distance > 0 do
    gravity = case planet_o do
      :earth -> * 9.8
      :mars  -> 3.71
      :moon  -> 1.6
    end
   :math.sqrt(2 * 9.8 * gravity)
  end
end
