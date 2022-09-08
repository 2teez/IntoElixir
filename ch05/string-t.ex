defmodule Strings do
  def prints() do
    world = "World..."
    IO.puts("Hello, #{world}")

    msg = ~s"this is a #{world}\n for all of us"
    IO.puts(msg)

    ch = String.to_char_list(msg)
    IO.puts(ch)

    wrd_list = ~w/emrys is the best/
    IO.puts("#{inspect(wrd_list)}")
  end
end

defmodule Ask do
  def query(msg) do
    IO.puts("#{msg}: ")
    IO.getn('which? ')
  end
end
