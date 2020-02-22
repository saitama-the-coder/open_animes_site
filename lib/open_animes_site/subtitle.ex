defmodule OpenAnimesSite.Subtitle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "subtitles" do
    field :content, :string
    field :language, :string
    field :language_code, :string
    field :video_quality, :string
    field :episode_id, :id

    timestamps()
  end

  @doc false
  def changeset(subtitle, attrs) do
    subtitle
    |> cast(attrs, [:language, :language_code, :content, :video_quality])
    |> validate_required([:language, :language_code, :content, :video_quality])
  end
end
