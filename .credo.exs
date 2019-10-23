%{
  configs: [
    %{
      name: "default",
      requires: ["lib/"],
      checks: [
        {Credo.Check.Readability.ModuleDoc, false},
        {CredoDemoPlugin.BetterModuleDoc, []}
      ]
    }
  ]
}
