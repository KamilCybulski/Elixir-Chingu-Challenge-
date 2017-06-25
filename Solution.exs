defmodule Solution do
  def sum do
    x = String.to_integer(String.trim(IO.read(:stdio, :line)))
    y = String.to_integer(String.trim(IO.read(:stdio, :line)))
    IO.puts(x + y)
  end

  def hello do
    IO.puts("Hello, world!")
    nil
  end
end


Solution.hello()