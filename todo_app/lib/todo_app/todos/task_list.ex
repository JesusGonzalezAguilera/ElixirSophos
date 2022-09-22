defmodule TodoApp.Todos.TaskList do
  use Ecto.Schema
  import Ecto.Changeset

  alias TodoApp.Todos.List
  alias TodoApp.Todos.Task

  schema "task_lists" do

    belongs_to :task, Task
    belongs_to :list, List

    timestamps()
  end

  def changeset(task_list, params) do
    IO.inspect.(binding())

    task_list
    |> cast(params, [])
  end


end
