defmodule TodoApp.Repo.Migrations.CreateUserListTable do
  use Ecto.Migration

  def change do
    create table(:user_task_list) do
      add(:user_id, references(:users, on_delete: :nothing))
      add(:list_id, references(:lists, on_delete: :nothing))

      timestamps()
    end
    create(index(:user_task_list, [:user_id, :list_id]))
  end
end
