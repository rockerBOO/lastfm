Lastfm
======

Last.FM REST API on Elixir

**PRE-ALPHA**
*This is just a simple wrapper for the REST API on HTTPoison*

### Setup

In your mix.exs:

```elixir
  defp deps do
	[{:lastfm, github: "rockerBOO/lastfm"}]
  end
```

```elixir
  def application do
    [applications: [:lastfm]]
  end
```

API Key is set in `.env`. See `.env.example` for format.

```bash
export LAST_FM_API_KEY=
```

### Usage

```elixir
iex> Lastfm.Request.get!("method=user.getRecentTracks&user=rockerboo")
```


