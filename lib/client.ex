defmodule Lastfm.Request do
  use HTTPoison.Base

  def process_url(url) do
    "https://ws.audioscrobbler.com/2.0/" <>
    "?api_key=#{System.get_env("LAST_FM_API_KEY")}&format=json&#{url}"
  end

  def process_response_body(body) do
    body |> Poison.decode!()
  end
end