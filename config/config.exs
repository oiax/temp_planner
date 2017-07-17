# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :temp_planner,
  ecto_repos: [TempPlanner.Repo]

# Configures the endpoint
config :temp_planner, TempPlanner.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "LD2FCiHGjmHoo4Ag02ORh60VSLiTXSSFJL9d8YOHlAwwNJRGt01bl9mXieNCkniM",
  render_errors: [view: TempPlanner.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TempPlanner.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
