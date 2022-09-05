# using anonymous function

fall_velocity = fn (distance) -> :math.sqrt(2 * 9.8 * distance) end
fall_velocity.(35)

# you can also use `&` and the parameters of the
# function will be &1, &2, ...
# the above can be written as
# parameter distance is now &1 below

fall_velocity2 = &(:math.sqrt(2 * 9.8 * &1))
fall_velocity2.(56)

defmodule Drop do
  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end

  # oneliner function comparable to
  # anonymous function stated above
  def fall_vel_oneline(dist), do: :math.sqrt(2 * 9.8 * dist)

  def mps_to_mph(mps) do
    2.23693629 * mps
  end

  def mps_to_kph(mps) do
    3.6 * mps
  end
end
