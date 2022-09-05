defmodule Drop do
  @moduledoc """
  Collections of fall velocities.
  """
  import :math, only: [sqrt: 1]

  @doc """
  fall_velocity generic function takes two arity. It calculate
  the velocity of a body in a vacuum using the gravity of the
  body and the distance travelled
  """

  @spec fall_velocity(number(), float()) :: float()

  def fall_velocity(distance, gravity \\ 9.8)

  @spec fall_velocity(atom(), number()) :: float()

  def fall_velocity(:earth, distance) do
    sqrt(2 * 9.8 * distance)
  end

  @spec fall_velocity(atom(), number()) :: float()

  def fall_velocity(:moon, distance) do
    sqrt(2 * 1.6 * distance)
  end

  @spec fall_velocity(atom(), number()) :: float()

  def fall_velocity(:mars, distance) do
    sqrt(2 * 3.71 * distance)
  end
end

an_fall_velocity = fn distance -> :math.sqrt(2 * 9.8 * distance) end
