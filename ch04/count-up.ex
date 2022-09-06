defmodule Count do
  @spec count_up(number()) :: number()

  def count_up(value) do
    count_up(value, 1)
  end

  @spec count_up(number(), number()) :: number()

  defp count_up(value, acc) when value >= acc do
    IO.inspect(acc)
    count_up(value, acc + 1)
  end

  @spec count_up(number(), number()) :: :ok

  defp count_up(value, acc) when value < acc do
    IO.puts("finished!")
  end
end
