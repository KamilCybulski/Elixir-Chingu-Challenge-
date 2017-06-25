defmodule Solution do
  def len(list, n \\ 0)
  def len([], n), do: n
  def len([_ | tail], n), do: len(tail, n+1)

end

IO.read(:stdio, :all)
|> String.split
|> Solution.len
|> IO.inspect