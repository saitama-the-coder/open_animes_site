defmodule OpenAnimesSite.Anime do
  use Ecto.Schema
  import Ecto.Changeset

  schema "animes" do
    field :age_rating, :string
    field :cover_image, :map
    field :end_date, :date
    field :episode_count, :integer
    field :last_remote_update, :utc_datetime
    field :poster_image, :map
    field :rating, :float
    field :start_date, :date
    field :status, :string
    field :synopsis, :string
    field :tba, :string
    field :title, :string
    field :trailer, :string
    field :type, :string

    timestamps()
  end

  @doc false
  def changeset(anime, attrs) do
    anime
    |> cast(attrs, [:last_remote_update, :title, :synopsis, :rating, :start_date, :end_date, :age_rating, :type, :status, :tba, :poster_image, :cover_image, :episode_count, :trailer])
    |> validate_required([:last_remote_update, :title, :synopsis, :rating, :start_date, :end_date, :age_rating, :type, :status, :tba, :poster_image, :cover_image, :episode_count, :trailer])
  end
end
