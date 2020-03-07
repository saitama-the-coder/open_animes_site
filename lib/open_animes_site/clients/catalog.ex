defmodule OpenAnimesSite.Clients.Catalog do
  use OpenAnimesSite.Clients.Generic

  def get_animes(), do: try_request(:get, "/animes")

  def get_anime(anime_id), do: try_request(:get, "/animes/#{anime_id}")

  def get_episodes(anime_id),
    do: try_request(:get, "/animes/#{anime_id}/episodes")

  def get_episode(episode_id), do: try_request(:get, "/episodes/#{episode_id}")

  def get_subtitles(episode_id),
    do: try_request(:get, "/subtitles", "", [], %{episode_id: episode_id})
end
