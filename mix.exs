defmodule ClickSend.Mixfile do
  use Mix.Project

  @project_url "https://github.com/midas/click_send"
  @version     "0.6.0"

  def project do
    [
      app: :click_send,
      version: @version,
      source_url: @project_url,
      homepage_url: @project_url,
      elixir: "~> 1.5",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      docs: [
        main: "readme",
        extras: ["README.md"]
      ],
      package: package(),
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [
        :logger
      ]
    ]
  end

  defp description do
    """
    API Facade for ClickSend REST v3.
    """
  end

  defp package do
    [
      name: :click_send,
      files: [
        "config",
        "lib",
        "test",
        "mix.exs",
        "README*",
        "LICENSE*"
      ],
      maintainers: ["C. Jason Harrelson"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => @project_url,
        "Docs" => "https://hexdocs.pm/click_send/#{@version}"
      }
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 2.1"},
      {:poison, "~> 3.0 or ~> 4.0 or ~> 5.0 or ~> 6.0"},

      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end

end
