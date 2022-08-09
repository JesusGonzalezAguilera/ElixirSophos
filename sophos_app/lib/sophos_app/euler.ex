defmodule SophosApp.Euler do
  alias SophosApp.MyList
  import String, only: [split: 3]

  def problem_1(n) do
    n-1
    |> MyList.generate()
    |> transform()
    |> IO.inspect()
    |> MyList.sum()
  end

  def problem_1_bis(n) do
    n-1
    |> MyList.generate()
    |> filter()
    |> IO.inspect()
    |> MyList.sum()
  end


  defp transform(numbers) do
    do_transform(numbers,[])
  end

  defp do_transform([],transformed), do: transformed

  defp do_transform([h|t],transformed) do
    do_transform(t, [evaluate(h)|transformed])
  end

  defp evaluate(h) when rem(h,5) == 0 or rem(h,3), do: h
  defp evaluate(h), do: 0

  defp filter(numbers) do
    do_filter(numbers,[])
  end

  defp do_filter([],filter_list), do: filter_list
  defp do_filter([h|t],filter_list) do
    do_filter(t,apply_filter(h,filter_list))
  end

  defp apply_filter(h,list) when rem(h,5) == 0 or rem(h,3), do: list++[h]
  defp apply_filter(_h,list), do: list

end
