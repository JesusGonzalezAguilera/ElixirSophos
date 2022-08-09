defmodule SophosApp.ArrayOper do

  @moduledoc """
  Implementación de funciones en array
  """
  def exec(list) do
    arrayOper(list,[])
  end

  defp arrayOper([],list), do: list
  defp arrayOper([h|t],[]) do
    oper = &(&1*&1)
    arrayOper(t, []++[oper.(h)])
  end
  defp arrayOper([h|t],list) do
    oper = &(&1*&1)
    arrayOper(t, list++[oper.(h)])
  end
end
