defmodule Hof do
  def tripple(value, function) do
    3 * function.(value)
  end
end

defmodule Main do
  def main() do
    my_function = fn value -> 20 * value end
    IO.puts(to_string("#{Hof.tripple(3, my_function)}"))

    # use closure
    x = 6
    IO.puts(to_string("#{Hof.tripple(x, my_function)}"))

    # using another anonymous function style
    IO.puts(to_string("#{Hof.tripple(3, &(200, &1))}"))
  end
end
