defmodule TodoAppWeb.API.TaskView do
  use TodoAppWeb, :view

  def render("index.json", %{tasks: tasks}) do
    %{data: render_many(tasks, TodoAppWeb.API.TaskView, "show.json")}
  end

  def render("show.json", %{task: task}) do
    %{
      id: task.id,
      description: task.description,
      dateCreated: task.insert_at,
      type: "Task"
    }
  end
end
