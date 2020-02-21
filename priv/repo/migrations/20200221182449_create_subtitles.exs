defmodule OpenAnimesSite.Repo.Migrations.CreateSubtitles do
  use Ecto.Migration

  def change do
    create table(:subtitles) do
      add :language, :string
      add :language_code, :string
      add :content, :text
      add :episode_id, references(:episodes, on_delete: :nothing)

      timestamps()
    end

    create index(:subtitles, [:episode_id])
  end
end
