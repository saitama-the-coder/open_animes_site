defmodule OpenAnimesSite.Episode do
  use Ecto.Schema
  import Ecto.Changeset

  schema "episodes" do
    field :airdate, :date
    field :last_remote_update, :utc_datetime
    field :length, :integer
    field :number, :integer
    field :relative_number, :integer
    field :season_number, :integer
    field :synopsis, :string
    field :thumbnail, :string
    field :title, :string
    field :url, :map
    field :anime_id, :id

    timestamps()
  end

  @doc false
  def changeset(episode, attrs) do
    episode
    |> cast(attrs, [:last_remote_update, :title, :synopsis, :number, :season_number, :relative_number, :airdate, :length, :thumbnail, :url])
    |> validate_required([:last_remote_update, :title, :synopsis, :number, :season_number, :relative_number, :airdate, :length, :thumbnail, :url])
  end
end
