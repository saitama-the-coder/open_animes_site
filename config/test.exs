use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :open_animes_site, OpenAnimesSiteWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
