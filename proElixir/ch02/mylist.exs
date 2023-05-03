
defmodule MyList do
  @spec len(list()) :: number()
  def len([]), do: 0
  def len([_| t]), do: 1 + len(t)

  @spec square(list()) :: list()
  def square([]), do: []
  def square([h|t]), do: [h*h | square(t)]

  @spec map(list(), function()) :: list()
  def map([], _), do: []
  def map([h|t], func), do: [func.(h)| map(t, func)]

  def reduce([], acc), do: acc
  def reduce([h|t], acc), do: reduce(t, acc+h)

  def reduce([], acc, _), do: acc
  def reduce([h|t], acc, func), do: reduce(t, func.(h, acc), func)

  def mapsum(alist, func) when is_list(alist) do
    mapsum(alist, 0, func)
  end
  def mapsum([], acc, _) do
    acc
  end
  def mapsum([h|t], acc, func) do
    mapsum(t, acc+func.(h), func)
  end

  def max([h]), do: h
  def max([h|[m|t]]) when m > h, do: max([m|t])
  def max([h|[m|t]]) when h > m, do: max([h|t])

end

my_values = [1,2,3,4,5]
MyList.len(my_values) |> IO.puts
MyList.square(my_values) |> IO.inspect
MyList.reduce([1,2,3,4,5], 0)
MyList.mapsum([1, 2, 3, 4, 5, 6], &(&1 * &1)) |> IO.inspect
MyList.max([1,5,3,8,2,4]) |> IO.inspect
1..10 |> Enum.map(&IO.inspect(&1)) 
