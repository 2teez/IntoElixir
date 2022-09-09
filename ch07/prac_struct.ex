defmodule Person do
  defstruct name: "", age: 0
end

defmodule Planetmo do
  defstruct name: nil, gravity: 0, diameter: 0, distance_from_sum: 0
end

defmodule Tower do
  defstruct location: "", height: 20, planetmo: :earth, name: ""
end

defmodule StructDrop do
  import :math, only: [sqrt: 1]

  def fall_velocity(t = %Tower{}) do
    fall_velocity(t.planetmo, t.height)
  end

  def fall_velocity(:earth, distance) when distance >= 0 do
    sqrt(2 * 9.8 * distance)
  end

  def fall_velocity(:moon, distance) when distance >= 0 do
    sqrt(2 * 1.6 * distance)
  end

  def fall_velocity(:mars, distance) when distance >= 0 do
    sqrt(2 * 3.71 * distance)
  end
end

"""
[Person, Planetmo, StructDrop, Tower]
iex(11)> StructDrop.fall_velocity :mars, 45
18.272930799409274
iex(12)> StructDrop.fall_velocity :moon, 45
12.0
iex(13)> tower = %Tower{
height:      location:    name:        planetmo:
iex(13)> tower = %Tower{planetmo: :earth, height: 45}
%Tower{height: 45, location: "", name: "", planetmo: :earth}
iex(14)> StructDrop.fall_velocity tower
29.698484809834998
iex(15)> tower = %Tower{tower | planetmo: :mars}
%Tower{height: 45, location: "", name: "", planetmo: :mars}
iex(16)> StructDrop.fall_velocity tower
18.272930799409274
iex(17)>  
"""
