defmodule TodoApp.Todos.List do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, only: [from: 2]

  alias TodoApp.Accounts.User
  alias TodoApp.Todos.Task
  alias TodoApp.Todos.TaskList

  schema "lists" do
    field :name, :string
    field :tags, {:array, :string}
    belongs_to :user, User

    many_to_many :users, User, join_through: UserTaskList
    many_to_many :tasks, Task, join_through: TaskList

    timestamps()
  end

  @doc false
  def changeset(list, attrs) do
    list
    |> cast(attrs, [:name, :tags, :user_id])
    |> validate_required([:name, :tags, :user_id])
    |> validate_length(:name, min: 5)
    |> foreign_key_constraint(:user_id)
    |> cast_assoc(:tasks, with: &TaskList.changeset/2)
  end

  def lists_by_user(user_id) do
    from t in __MODULE__,
      where: t.user_id == ^user_id,
      order_by: [asc: t.inserted_at],
      limit: 5
  end
end
