defmodule My_Math do 

  def sum_list([]) do 
    0
  end

  def sum_list([h|t]) do
    h + sum_list(t)
  end


  def mult(my_list) when is_list(my_list) do
      x = List.flatten my_list
      Enum.map(x, fn(x) -> x * x end)
  end

  def md5(value) do
      :crypto.hash(:md5, value) |> Base.encode16()
  end

end