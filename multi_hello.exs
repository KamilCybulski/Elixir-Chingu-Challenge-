defmodule Hello do
  def printHello(n) do
    if n < 1 do
      nil
    else
      IO.puts("Hello World")
      printHello(n-1)
    end
  end
end

Hello.printHello(
  String.to_integer(
    String.trim(
      IO.read(:stdio, :line))))