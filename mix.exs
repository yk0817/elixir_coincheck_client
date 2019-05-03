defmodule ElixirCoincheckClient.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_coincheck_client,
      version: "0.1.0",
      elixir: "~> 1.8",
      description: description(),
      package: package(),
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
      {:poison, "~> 3.1" },
      {:ex_doc, ">= 0.0.0"}
    ]
  end

  defp description() do
    """
    Coincheck client library for elixir
    """
  end

  defp package do
    [ maintainers: ["yk0817"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/yk0817/elixir_coincheck_client"} ]
  end

end
