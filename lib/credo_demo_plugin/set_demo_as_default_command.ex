defmodule CredoDemoPlugin.SetDemoAsDefaultCommand do
  #
  # This is an example task that sets the "demo" command, which is defined in this plugin,
  # as default command so that it is executed when the user types `mix credo`
  #
  use Credo.Execution.Task

  alias Credo.CLI.Options

  def call(exec, _opts) do
    set_command(exec, exec.cli_options.command || "demo")
  end

  defp set_command(exec, command) do
    %Execution{exec | cli_options: %Options{exec.cli_options | command: command}}
  end
end
