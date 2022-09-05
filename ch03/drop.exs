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

  def fall_velocity(:earth, distance) when distance >= 0 do
    sqrt(2 * 9.8 * distance)
  end

  @spec fall_velocity(atom(), number()) :: float()

  def fall_velocity(:moon, distance) when distance >= 0 do
    sqrt(2 * 1.6 * distance)
  end

  @spec fall_velocity(atom(), number()) :: float()

  def fall_velocity(:mars, distance) when distance >= 0 do
    sqrt(2 * 3.71 * distance)
  end
end

an_fall_velocity = fn distance -> :math.sqrt(2 * 9.8 * distance) end

defmodule MathDemo do
  @spec absolute_value(number()) :: number()

  def absolute_value(value) when value < 0 do
    -value
  end

  def absolute_value(value) do
    value
  end
end

defmodule Drop2 do
  @doc """
  Doing same as the module above but using tuple as parameter
  in the functions `def fall_velocity/1`
  """

  import :math, only: [sqrt: 1]

  @spec fall_velocity(tuple()) :: number()

  def fall_velocity({:earth, dist}) when dist >= 0 do
    sqrt(2 * 9.8 * dist)
  end

  def fall_velocity({:mars, dist}) when dist >= 0 do
    sqrt(2 * 3.76 * dist)
  end

  def fall_velocity({:moon, dist}) when dist >= 0 do
    sqrt(2 * 1.6 * dist)
  end
end
