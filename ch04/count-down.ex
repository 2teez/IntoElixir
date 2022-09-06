defmodule Count do
  @spec count_down(number()) :: number()

  def count_down(count) when count >= 0 do
    IO.inspect(count)
    count_down(count - 1)
  end

  @spec count_down(number()) :: :ok

  def count_down(_count) do
    IO.puts("finished!")
  end
end
