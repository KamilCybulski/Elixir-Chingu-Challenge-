IO.read(:stdio, :all)
|> String.split
|> Enum.map(fn(s) -> String.to_integer(s) end)
|> Enum.filter(fn(x) -> rem(x, 2) != 0 end)
|> Enum.reduce(fn(x, acc) -> x + acc end)
|> IO.inspect
    
    

