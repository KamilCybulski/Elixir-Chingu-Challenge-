defmodule Solution do
  
  def repeater(input) do
    [ n | list ] = input
    [ current | rest ] = list
    repeater(current, rest, n, n) 
  end

  def repeater(current, list, counter, n) when counter > 0 do
    IO.puts(current)
    repeater(current, list, counter-1, n)
  end

  def repeater(current, list, counter, n) when counter <= 0 do
    [ new_current | rest ] = list
    repeater(new_current, rest, n, n)
  end
end

IO.read(:stdio, :all)
|> String.split
|> Enum.map( fn(item) -> String.to_integer(item) end )
|> Solution.repeater

