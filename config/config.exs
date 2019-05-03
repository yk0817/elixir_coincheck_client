use Mix.Config

config :elixir_coincheck_client, public_key: System.get_env("COINCHECK_PUBLIC_KEY"), private_key: System.get_env("COINCHECK_PRIVATE_KEY")


