defmodule Solution do

  def main(n, work \\ [])

  def main(n, work) when n <= 0 do
    work
  end

  def main(n, work) when n > 0 do
    main(n-1, [n] ++ work)
  end
    
end


IO.read(:stdio, :line)
|> String.trim
|> String.to_integer
|> Solution.main
|> IO.inspect(limit: 100)