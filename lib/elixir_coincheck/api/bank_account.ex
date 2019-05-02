defmodule ElixirCoincheckClient.API.ReadBankAccount do
  import ElixirCoincheckClient.API.Base
  def read_bank_account() do
    url = domain() <> "/bank_accounts"
    HTTPoison.get!(url, headers(url))
  end
end
