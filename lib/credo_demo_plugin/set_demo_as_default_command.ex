defmodule CredoDemoPlugin.SetDemoAsDefaultCommand do
  use Credo.Execution.Task

  alias Credo.CLI.Options

  def call(exec, _opts) do
    set_command(exec, exec.cli_options.command || "demo")
  end

  defp set_command(exec, command) do
    %Execution{exec | cli_options: %Options{exec.cli_options | command: command}}
  end
end
