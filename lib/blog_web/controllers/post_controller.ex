defmodule BlogWeb.PostController do
  use BlogWeb, :controller

  def index(conn, _params) do
    posts = [
      %{title: "first post"},
      %{title: "second post"}
    ]

    render(conn, "index.html", posts: posts)
  end
end
