defmodule SophosApp.AdventOfCodeDay1 do
  def execPart1(floors) do
    String.split(floors,"")
    |>rule()
    |>Enum.sum()
  end

  defp rule(route) do
    Enum.map(route, fn
      "" -> 0
      "(" -> 1
      ")" -> -1
      end)
  end

  def execPart2(floors) do
    String.split(floors,"")
    |>rule()
    |>evaluate(0)
  end

  defp evaluate([h|t],0), do: evaluate(t,0,0)
  defp evaluate([h|t],n,index) when n == -1, do: index
  defp evaluate([h|t],n,index) when n != -1, do: evaluate(t,n+h,index+1)

end
