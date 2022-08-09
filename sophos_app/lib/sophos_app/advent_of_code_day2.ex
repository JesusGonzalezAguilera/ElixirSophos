defmodule SophosApp.AdventOfCodeDay2 do

  def execPart1(cadena) do
    String.split(cadena,"\n")
    |>Enum.map(fn x -> String.split(x, "x") end)
    |>Enum.filter(fn x -> x != [""] end)
    |>Enum.map(fn x -> Enum.map(x, fn x -> String.to_integer(x) end)end)
    |>Enum.map(fn x -> areaSuperficial(x) end)
    |>Enum.sum()
  end


  defp areaSuperficial([l,w,h]) do
    areas = [l*w,w*h,l*h]
    min = Enum.min(areas)
    Enum.sum(areas)*2 + min
  end

  def execPart2(cadena) do
    String.split(cadena,"\n")
    |>Enum.map(fn x -> String.split(x, "x") end)
    |>Enum.filter(fn x -> x != [""] end)
    |>Enum.map(fn x -> Enum.map(x, fn x -> String.to_integer(x) end)end)
    |>Enum.map(fn x -> largoListon(x) end)
    |>Enum.sum()
  end

  defp largoListon([l,w,h]) do
    [min,min2,tail] = Enum.sort([l,w,h])
    bow = min*min2*tail
    length = min*2+min2*2
    bow+length
  end

end
