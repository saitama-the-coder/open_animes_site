# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :open_animes_site,
  ecto_repos: [OpenAnimesSite.Repo]

# Configures the endpoint
config :open_animes_site, OpenAnimesSiteWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Cr7kRkqgpwmWuWZTf3agyhtrObZ2TLWW3E0L5LwKgBWXjgO2AH3X0EIxJQ92W79l",
  render_errors: [view: OpenAnimesSiteWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OpenAnimesSite.PubSub, adapter: Phoenix.PubSub.PG2],
  live_view: [signing_salt: "7+Ep4knJ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
