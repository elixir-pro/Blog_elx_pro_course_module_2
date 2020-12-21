# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Blog.Repo.insert!(%Blog.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

# alias Blog.Posts
alias Blog.Posts.Post
alias Blog.Repo

{:ok, _post} =
  Post.changeset(%Post{}, %{
    title: "How to do that?",
    description: "This is the description on how to bake something."
  })
  |> Repo.insert()

{:ok, _post} =
  Post.changeset(%Post{}, %{
    title: "How to learn Elixir?",
    description: "Description something."
  })
  |> Repo.insert()
