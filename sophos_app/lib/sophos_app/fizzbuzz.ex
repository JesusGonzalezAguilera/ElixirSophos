defmodule SophosApp.Fizzbuzz do
  alias SophosApp.MyList

  def exec(n) do
    MyList.generate(n)
    |> gen_fizz_buzz()
  end

  defp gen_fizz_buzz(list) do
    gen_fizz_buzz(list,[])
  end


  defp gen_fizz_buzz([],list), do: list
  defp gen_fizz_buzz([h|t],list) when rem(h,3) == 0 and rem(h,5) == 0, do: gen_fizz_buzz(t,list++[:fizzbuzz])
  defp gen_fizz_buzz([h|t],list) when rem(h,3) == 0, do: gen_fizz_buzz(t,list++[:fizz])
  defp gen_fizz_buzz([h|t],list) when rem(h,5) == 0, do: gen_fizz_buzz(t,list++[:buzz])
  defp gen_fizz_buzz([h|t],list), do: gen_fizz_buzz(t,list++[h])


end
