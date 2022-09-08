defmodule Reverse do
  def reverse(data) do
    reverse(data, [])
  end

  def reverse([], acc) do
    acc
  end

  def reverse([h | t], acc) do
    reverse(t, [h | acc])
  end
end

defmodule Split do
  def split(data) do
    split(data, [])
  end

  defp split([], acc) do
    acc |> Enum.reverse()
  end

  defp split([h | t], acc) do
    split(t, [[h] | acc])
  end
end

defmodule Main do
  def main() do
    String.to_charlist("london") |> Reverse.reverse() |> Split.split() |> IO.inspect()
  end
end
