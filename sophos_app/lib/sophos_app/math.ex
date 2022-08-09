defmodule SophosApp.Math do

  @moduledoc """
  Implementación básica del módulo de matemáticas de Sophos
  """

  @pi 3.1415

  @doc """
  Suma dos números
  """
  def sum(a,b) do
    a + b
  end

  def circumference(r), do: 2 * r *  @pi

  @doc """
  Calcula el Máximo Común Divisor
  """
  def mcd(a,0), do: a
  def mcd(a,b), do: mcd(b, rem(a,b))

  defmodule Geometry.Rectangle do
    def area(a,b), do: a*b
    def area(a), do: area(a,a)
  end


end
