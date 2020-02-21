defmodule OpenAnimesSite.Repo.Migrations.CreateAnimes do
  use Ecto.Migration

  def change do
    create table(:animes) do
      add :last_remote_update, :utc_datetime
      add :title, :string
      add :synopsis, :string
      add :rating, :float
      add :start_date, :date
      add :end_date, :date
      add :age_rating, :string
      add :type, :string
      add :status, :string
      add :tba, :string
      add :poster_image, :map
      add :cover_image, :map
      add :episode_count, :integer
      add :trailer, :string

      timestamps()
    end

  end
end
