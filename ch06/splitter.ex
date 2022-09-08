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
