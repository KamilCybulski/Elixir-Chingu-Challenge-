defmodule Solution do
  
  def filter(input) do
    [n | list] = input
    [head | tail] = list
    filter(head, tail, n, [])
  end

  def filter(current, list, n, work) when current < n do
    IO.puts(current)
    [new_current | rest] = list
    filter(new_current, rest, n, work ++ [current])
  end

  def filter(current, list, n, work) when current >= n do
    [new_current | rest] = list
    filter(new_current, rest, n, work)
  end

end

IO.read(:stdio, :all)
|> String.split
|> Enum.map(fn(str) -> String.to_integer(str) end)
|> Solution.filter



