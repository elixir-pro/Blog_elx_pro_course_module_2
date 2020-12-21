defmodule BlogWeb.PostController do
  use BlogWeb, :controller
  alias Blog.Posts.Post
  alias Blog.Repo

  def index(conn, _params) do
    posts = Repo.all(Post)
    render(conn, "index.html", posts: posts)
  end

  def show(conn, _params) do
    render(conn, "show.html")
  end
end
