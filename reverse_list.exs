defmodule Solution do
  
  def reverse(list) do
    reverse(list, [])
  end

  def reverse([head | tail], work) do
    reverse(tail, [head | work])
  end

  def reverse([], work) do
    work
  end

end

IO.read(:stdio, :all)
|> String.split
|> Solution.reverse
|> Enum.each(fn(x) -> IO.puts(x) end)