defmodule ElixirCoincheckClient.API.WithdrawExecute do
  import ElixirCoincheckClient.API.Base
  def withdraw_execute(params) do
    url = domain() <> "/withdraws"
    HTTPoison.post!(url, Poison.encode!(params), headers(url, Poison.encode!(params)))
  end
end
