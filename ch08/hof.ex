defmodule HOF do
  def tripple(value, function) do
    3 * function.(value)
  end
end
