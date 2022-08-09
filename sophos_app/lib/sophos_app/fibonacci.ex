defmodule SophosApp.Fibonacci do
  @moduledoc """
  Implementacion recursividad de Pila
  """
  def sequence(0), do: 0
  def sequence(1), do: 1

  def sequence(n) do
    sequence(n-1)+sequence(n-2)
  end

  @doc """
  Recursividad de Cola
  """

  def sequence2(n) when n>2, do: compute(n, [0])
  def sequence2(1), do: 1
  def sequence2(0), do: 0
  def sequence2(2), do: 1
  defp compute(0, [f1|[f2|[]]]), do: f1+f2
  defp compute(n, [0]), do: compute(n-3, fibo([0,1]))
  defp compute(n, f), do: compute(n-1, fibo(f))

  defp fibo([f1|[f2|[]]]), do: [f2,f1+f2]
end
