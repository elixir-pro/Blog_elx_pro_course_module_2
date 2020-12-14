defmodule BlogWeb.PostController do
  use BlogWeb, :controller

  def index(conn, _params) do
    posts = [
      %{id: 1, title: "first post"},
      %{id: 2, title: "second post"}
    ]

    render(conn, "index.html", posts: posts)
  end

  def show(conn, _params) do
    render(conn, "show.html")
  end
end
