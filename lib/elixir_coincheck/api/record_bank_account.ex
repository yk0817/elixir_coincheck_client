defmodule ElixirCoincheckClient.API.RecordBankAccount do
  import ElixirCoincheckClient.API.Base
  def record_bank_account(params) do
    url = domain() <> "/bank_accounts"
    HTTPoison.post!(url, Poison.encode!(params), headers(url, Poison.encode!(params)))
  end
end
