# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :instachat,
  ecto_repos: [Instachat.Repo]

# Configures the endpoint
config :instachat, Instachat.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "GDmxfrs7yBsG9vW3kV0HtI5IPyyEIrP1zilrpzVBl2A7u3PDq1RW95QmwD8VtV73",
  render_errors: [view: Instachat.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Instachat.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
