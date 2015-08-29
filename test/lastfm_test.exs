defmodule LastfmTest do
  use ExUnit.Case

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "request" do
    url = "method=user.getRecentTracks&user=rockerboo"

    case Lastfm.Request.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200}} ->
        assert true
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        IO.puts "Not found :("
        assert false
      {:error, %HTTPoison.Error{reason: reason}} ->
        IO.inspect reason
        assert false
    end
  end
end
