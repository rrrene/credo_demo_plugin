defmodule CredoDemoPlugin.MixProject do
  use Mix.Project

  def project do
    [
      app: :credo_demo_plugin,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "A static code analysis tool with a focus on code consistency and teaching.",
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
      {:credo, path: "../credo"}
    ]
  end
end
