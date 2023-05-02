
defmodule Sum do
  def sum(n), do: sum(n, 1)

  defp sum(1, acc), do: acc

  defp sum(n, acc), do: sum(n-1, acc+n)
end

IO.puts Sum.sum(100)
    
Enum.map [1,2,3,4], &(&1+2) |> IO.puts
Enum.map [1,2,3,4], &(IO.inspect &1)

defmodule Fibonnaci do
  def of(n) when n <= 2, do: 1
  def of(n), do: of(n-2) + of(n-1)
end

1..40 |> Enum.map &("#{&1} -> #{Fibonnaci.of(&1)}") |> IO.puts

defmodule Factorial do
  def of(n), do: of(n, 1)
  defp of(0, acc), do: acc
  defp of(n, acc), do: of(n-1, acc*n)
end

IO.puts(Factorial.of(1000))

gcd = 
  fn x, y ->
    case {x, y} do
      {x, 0} -> x
         _ -> {x, rem(x, y)}
    end
  end
elem(gcd.(221,34), 1) |> IO.puts
