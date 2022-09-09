defmodule HOF do
  def tripple(value, function) do
    3 * function.(value)
  end
end

defmodule Main do
  def main() do
    my_function = fn value -> 20 * value end
    IO.puts(to_string("#{HOF.tripple(3, my_function)}"))

    # use closure
    x = 6
    IO.puts(to_string("#{HOF.tripple(x, my_function)}"))
  end
end
