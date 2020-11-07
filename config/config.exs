# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :walky_talky, WalkyTalkyWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "onfJUl3gcJ5g99JX7wknmIslmqqMQYy1GSxPso7AN5aZFtyNCvnn60RA4UXhE24t",
  render_errors: [view: WalkyTalkyWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: WalkyTalky.PubSub,
  live_view: [signing_salt: "UYfKLZsv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
