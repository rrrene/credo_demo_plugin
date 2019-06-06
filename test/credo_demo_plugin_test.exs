defmodule CredoDemoPluginTest do
  use ExUnit.Case
  doctest CredoDemoPlugin

  test "greets the world" do
    assert CredoDemoPlugin.hello() == :world
  end
end
