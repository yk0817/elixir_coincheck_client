defmodule ElixirCoincheckClient.API.Balance do
  import ElixirCoincheckClient.API.Base
  def balance() do
    url = domain() <> "/accounts/balance"
    HTTPoison.get!(url, headers(url))
  end
end
