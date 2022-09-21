defmodule SophosApp.PingPong do
  def handle_message({sender, response},caller,state) do
    IO.puts "PID #{inspect sender}, #{inspect response}"
    :timer.sleep(1000)
    result = change_process(response)
    {:ok,{self,result},[result|state]}
  end

  def handle_message({:status}, caller, state ) do
    {:ok, state, state}
  end

  def change_process(response) when response != :pong and response != :ping, do: :ping
  def change_process(response) when response == :ping, do: :pong
  def change_process(response) when response == :pong, do: :ping

  def init do
    ping_process = spawn(__MODULE__, :switch, [:ping])
    pong_process = spawn(__MODULE__, :switch, [:pong])
    {ping_process, pong_process}
  end

end
