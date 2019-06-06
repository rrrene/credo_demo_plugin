# CredoDemoPlugin

This is a demo plugin for [https://github.com/rrrene/credo](Credo)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `credo_demo_plugin` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:credo_demo_plugin, "~> 0.1.0"}
  ]
end
```

To use it in Credo, just add it to the list of plugins in `.credo.exs`:

```elixir
def deps do
  [
    {:credo_demo_plugin, "~> 0.1.0"}
  ]
end
```

### Using plugins

Plugins, like checks, are just modules and functions.
They can be included by listing them under the `:plugins` field in Credo's configuration file (if you do not have a `.credo.exs` yet, you can generate one via `mix credo gen.config`).

```elixir
%{
  configs: [
    %{
      name: "default",
      plugins: [
        {CredoDemoPlugin, []}
      ]
    }
  ]
}
```

### Configuring this plugin

Credo Plugins can be configured via params, just like checks.
Each entry consists of a two-element tuple: the plugin's module and a keyword list of parameters, which can be used to configure the plugin itself.

```elixir
%{
  configs: [
    %{
      name: "default",
      plugins: [
        {CredoDemoPlugin, [castle: "Grayskull"]}
      ]
    }
  ]
}
```

Plugins can be deactivated by setting the second tuple element to `false`.

```elixir
%{
  configs: [
    %{
      name: "default",
      plugins: [
        {CredoDemoPlugin, []},
        {CredoYetAnotherPlugin, false} # <-- don't load this for now
      ]
    }
  ]
}
```


## Contributing

1. [Fork it!](http://github.com/rrrene/credo_demo_plugin/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request



## Author

René Föhring (@rrrene)



## License

Credo is released under the MIT License. See the LICENSE file for further
details.
