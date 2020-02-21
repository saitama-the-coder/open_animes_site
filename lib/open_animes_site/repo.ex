defmodule OpenAnimesSite.Repo do
  use Ecto.Repo,
    otp_app: :open_animes_site,
    adapter: Ecto.Adapters.Postgres
end
