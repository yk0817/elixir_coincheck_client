defmodule ElixirCoincheckClient.API.Accounts do
  import ElixirCoincheckClient.API.Base
  def accounts() do
    url = domain() <> "/accounts"
    HTTPoison.get!(url, headers(url))
  end
end
