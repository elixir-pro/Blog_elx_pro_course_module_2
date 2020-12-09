defmodule BlogWeb.PostController do
  use BlogWeb, :controller

  def index(conn, params) do
    render(conn, "index.html")
  end
end
