defmodule SophosApp.Length do
  def exec(list) do
    length(list,0)
  end

  defp length([],n), do: n
  defp length([_h|t],n), do: length(t, n+1)
end
