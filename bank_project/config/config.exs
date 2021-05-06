# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bank_project,
  ecto_repos: [BankProject.Repo]

# Configures the endpoint
config :bank_project, BankProjectWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tEqjI3Y3JMuju3jYOtB404bkB2Vq5wrNWWludqBiSGaxKDg/9AXTJpPBHUhrJSSR",
  render_errors: [view: BankProjectWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BankProject.PubSub,
  live_view: [signing_salt: "7QIkT9kS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
