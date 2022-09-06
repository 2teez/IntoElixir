defmodule Fact do
  def factorial(num) do
    if num <= 1 do
      1
    else
      num * factorial(num - 1)
    end
  end

  def fact!(num) do
    IO.inspect("#{num}")
    fact!(num, 1)
  end

  defp fact!(num, acc) when num == 1 do
    IO.inspect(acc)
    acc
  end

  defp fact!(num, acc) do
    IO.inspect("#{num} - #{acc}")
    fact!(num - 1, acc * num)
  end
end
