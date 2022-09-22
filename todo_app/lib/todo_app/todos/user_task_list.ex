defmodule TodoApp.Todos.UserTaskList do
  use Ecto.Schema
  import Ecto.Changeset

  alias TodoApp.Todos.List
  alias TodoApp.Accounts.User

  schema "user_task_list" do
    belongs_to :user, User
    belongs_to :list, List

    timestamps()
  end

  def changeset(struct, params) do
    IO.inspect(binding())

    struct
    |> cast(params, [])
  end
end
