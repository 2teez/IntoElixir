defmodule Sum do
  @spec sum(list()) :: number()

  def sum(value), do: sum(value, 0)

  @spec sum(list()) :: number()
  defp sum([], acc), do: acc

  @spec sum(list()) :: number()
  defp sum([h | t], acc), do: sum(t, acc + h)
end

defmodule NRange do
  # get a default start value zero if range/1 is used.
  # Then call function range/4
  @spec range(number()) :: list()

  def range(value) do
    range(0, value, 1, [])
  end

  def range_include(value) do
    range(0, value + 1, 1, [])
  end

  # this generate range/2, range/3 and range/4
  @spec range(number(), number(), number(), list()) :: list()

  def range(start, stop, step \\ 1, acc \\ []) do
    if start === stop do
      acc |> Enum.reverse()
    else
      range(start + step, stop, step, [start | acc])
    end
  end
end

defmodule Overall do
  def product(value) do
    product(value, 1)
  end

  defp product([], acc) do
    acc
  end

  defp product([h|t], acc) do
    product(t, acc * h)
  end
end
