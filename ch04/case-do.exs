defmodule Drop do
  @spec fall_velocity(atom(), number()) :: float()

  def fall_velocity(planet_o, distance) when distance >= 0 do
    gravity =
      case planet_o do
        :earth -> 9.8
        :mars -> 3.71
        :moon -> 1.6
      end

    velocity = :math.sqrt(2 * 9.8 * gravity)

    cond do
      velocity <= 0 -> :stable
      velocity < 5 -> :slow
      velocity > 5 and velocity <= 10 -> :moving
      velocity > 10 or velocity < 20 -> :steady
      velocity > 20 -> :speedy
    end
  end
end
