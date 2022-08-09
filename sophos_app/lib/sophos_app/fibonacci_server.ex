defmodule SophosApp.FibonacciServer do
  alias SophosApp.Fibonacci

  def loop() do
    receive do
      {:sequence, caller, n} ->
        result = Fibonacci.sequence2(n)
        send(caller, {:fibonacci,n,result})
        loop()

      {:sequence, caller, msg} ->
        send(caller,{:status,:ok,msg})
        loop()

      {:exit, reason} ->
        IO.puts("Bye for #{inspect(reason)}")

      _message ->
        IO.puts("Bad Operation")
        loop()
    end
  end
end
