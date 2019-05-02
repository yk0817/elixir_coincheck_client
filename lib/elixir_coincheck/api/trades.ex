defmodule ElixirCoincheckClient.API.Trades do
  import ElixirCoincheckClient.API.Base
  def trades() do
    url = domain() <> "/trades"
    HTTPoison.get!(url, [], params: %{ "pair" => "btc_jpy" })
  end
end
