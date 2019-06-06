defmodule CredoDemoPlugin.DemoCommand do
  @moduledoc false

  alias Credo.CLI.Output.UI
  alias Credo.Execution

  def call(exec, _) do
    castle = Execution.get_plugin_param(exec, CredoDemoPlugin, :castle)

    UI.puts("By the power of #{castle}!")

    exec
  end
end
