defmodule SophosApp.Application do
  use Application

  def start() do
    children = [
      {SophosApp.FibonacciSupervisor, [name: SophosApp.FibonacciSupervisor]},
      {SophosApp.FactorialSupervisor, [name: SophosApp.FactorialSupervisor]},
      {Task.Supervisor, [name: SophosApp.TaskSupervisor]}
    ]

    opts = [strategy: :one_for_one]
    Supervisor.start_link(children, opts)
  end
end
