defmodule CredoDemoPlugin.MixProject do
  use Mix.Project

  def project do
    [
      app: :credo_demo_plugin,
      version: "0.1.1",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "A demo plugin for Credo",
      package: package()
    ]
  end

  defp package do
    [
      files: [
        ".credo.exs",
        "lib",
        "mix.exs",
        "README.md",
        "LICENSE"
      ],
      maintainers: ["René Föhring"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/rrrene/credo_demo_plugin"
      }
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
      {:credo, ">= 0.0.0"}
    ]
  end
end
