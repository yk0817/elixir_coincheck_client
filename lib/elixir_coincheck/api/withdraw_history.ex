defmodule ElixirCoincheckClient.API.WithdrawHistory do
  import ElixirCoincheckClient.API.Base
  def withdraw_history() do
    url = domain() <> "/withdraws"
    HTTPoison.get!(url, headers(url))
  end
end
