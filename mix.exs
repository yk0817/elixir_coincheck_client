defmodule ElixirCoincheckClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_coincheck_client,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpoison]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:exvcr, "~> 0.10", only: :test },
      {:httpoison, "~> 1.4" },
      {:poison, "~> 3.1" }
    ]
  end
end
