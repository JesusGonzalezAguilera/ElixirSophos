defmodule TodoApp.Repo.Migrations.CreateTaskListTable do
  use Ecto.Migration

  def change do
    create table(:task_lists) do
      add(:task_id, references(:tasks, on_delete: :nothing))
      add(:list_id, references(:lists, on_delete: :nothing))

      timestamps()
    end

    create(index(:task_lists, [:task_id, :list_id]))
  end
end
