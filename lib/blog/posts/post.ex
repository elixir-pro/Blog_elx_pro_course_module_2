defmodule Blog.Posts.Post do
  use Ecto.Schema

  schema "posts" do
    field :title, :string
    field :description, :string

    timestamps()
  end

  def changeset(post, attrs \\ %{}) do
    post
    |> Ecto.Changeset.cast(attrs, [:title, :description])
    |> Ecto.Changeset.validate_required([:title, :description],
      message: "can't be blank - please put a key description in your attrs map."
    )
  end
end
