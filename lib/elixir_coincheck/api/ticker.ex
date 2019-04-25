defmodule ElixirCoincheckClient.API.Ticker do
  import ElixirCoincheckClient.API.Base
  # public
  def ticker() do
    url = domain() <> "/ticker"
    response = HTTPoison.get!(url)
    inspect response.body
  end

end
