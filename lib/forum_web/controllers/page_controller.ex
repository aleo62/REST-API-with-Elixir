defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "John", email: "john@example.com"},
      %{id: 2, name: "Jane", email: "jane@example.com"},
      %{id: 3, name: "Jim", email: "jim@example.com"},
    ]

    json(conn, %{users: users})
  end
end
