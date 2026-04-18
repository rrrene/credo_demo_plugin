defmodule CredoDemoPlugin.BetterModuleDoc do
  # you can configure the basics of your check via the `use Credo.Check` call
  #
  # See https://hexdocs.pm/credo/Credo.Check.html
  #
  use Credo.Check,
    id: "MY_ID_1",
    base_priority: :high,
    category: :readbility,
    explanations: [
      check: """
      This ModuleDoc check is much better than the original one!!!11
      """
    ]

  @doc false
  def run(_source_file, _params \\ []) do
    # return no issues - TODO: implement actual check
    []
  end
end
