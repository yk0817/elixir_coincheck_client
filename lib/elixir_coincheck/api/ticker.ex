defmodule ElixirCoincheckClient.API.Ticker do
  import ElixirCoincheckClient.API.Base
  @spec ticker() :: binary()
  def ticker() do
    url = domain() <> "/ticker"
    HTTPoison.get!(url)
  end
end
