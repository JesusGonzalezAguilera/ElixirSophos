defmodule SophosApp.Math do
  def sum(a,b) do
    a + b
  end
  def mcd(a,0), do: a
  def mcd(a,b), do: mcd(b, rem(a,b))
  defmodule Geometry.Rectangle do
    def area(a,b), do: a*b
    def area(a), do: area(a,a)
end
end
