defmodule CredoDemoPlugin.ConvertCliSwitchesToPluginParams do
  @moduledoc false

  use Credo.Execution.Task

  def call(exec, _) do
    castle = Execution.get_given_cli_switch(exec, :castle)

    Execution.put_plugin_param(exec, CredoDemoPlugin, :castle, castle)
  end
end
