
defmodule Hof do
  @spec fizz_buzz(integer, integer, integer) :: String.t
  def fizz_buzz(a, b, c) do
    fizz_buzz {a, b, c}
  end

  @spec fizz_buzz(tuple()) :: String.t

  defp fizz_buzz(tup) do
    case tup do
      {0, 0, _} -> 'FizzBuzz,'
      {0, _, _} -> 'Fizz,'
      {_, 0, _} -> 'Buzz,'
      _ -> "#{elem(tup, 2)},"
    end
  end
end

IO.puts Hof.fizz_buzz(0, 0, 2)
IO.puts Hof.fizz_buzz(0, 0, 0)
IO.puts Hof.fizz_buzz(12, 3, 8)

anon = fn n -> Hof.fizz_buzz(rem(n, 3), rem(n, 5), n) end
10..17 
|> Enum.map(anon)
|> IO.puts

prefix = fn first_string -> 
            fn second_string -> 
	       first_string <> " " <> second_string 
	    end 
	 end

mrs = prefix.("Mrs")
smith = mrs.("Smith")

IO.puts smith
