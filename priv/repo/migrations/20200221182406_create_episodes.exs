defmodule OpenAnimesSite.Repo.Migrations.CreateEpisodes do
  use Ecto.Migration

  def change do
    create table(:episodes) do
      add :last_remote_update, :utc_datetime
      add :title, :string
      add :synopsis, :string
      add :number, :integer
      add :season_number, :integer
      add :relative_number, :integer
      add :airdate, :date
      add :length, :integer
      add :thumbnail, :string
      add :url, :map
      add :anime_id, references(:animes, on_delete: :nothing)

      timestamps()
    end

    create index(:episodes, [:anime_id])
  end
end
