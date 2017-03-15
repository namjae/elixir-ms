defmodule ExTest.Mixfile do
  use Mix.Project

  def project do
    [
        app: :ExTest,
        version: "1.0.0",
        elixir: "~> 1.4",
        build_embedded: Mix.env == :prod,
        start_permanent: Mix.env == :prod,
        deps: deps()
    ]
  end

  def application do
    [
        mod: {ExTest, []},
        applications: [:logger, :httpoison, :cowboy, :plug]
    ]
  end

  defp deps do
    [
        {:poison, "~> 3.1"}, #json parser
        {:httpoison, "~> 0.11"}, #http client
        {:redix, "~> 0.5"}, #redis
        {:cowboy, "~> 1.1"}, # http server
        {:plug, "~> 1.3"} # http server wrapper
    ]
  end

end