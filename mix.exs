defmodule Excraping.MixProject do
  use Mix.Project

  def project do
    [
      app: :excraping,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.4"},
      {:hackney, "~> 1.17"},
      {:floki, "~> 0.32.0"},
      {:credo, "~> 1.6", only: [:dev, :test], runtime: false}
    ]
  end

  defp escript do
    [
      main_module: Excraping.Cli,
      path: "bin/excraping"
    ]
  end
end
