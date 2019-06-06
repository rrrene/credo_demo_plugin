defmodule CredoDemoPlugin.BetterModuleDoc do
  @moduledoc false

  @checkdoc """
  This ModuleDoc check is much better than the original one!!!11
  """
  @explanation [
    check: @checkdoc
  ]

  # you can configure the basics of your check via the `use Credo.Check` call
  use Credo.Check, base_priority: :high, category: :readbility, exit_status: 0

  @doc false
  def run(_source_file, _params \\ []) do
    # return no issues - TODO: implement actual check
    []
  end
end
