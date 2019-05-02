defmodule ElixirCoincheckClient.API.DepositBitcoinHistory do
  import ElixirCoincheckClient.API.Base
  def deposit_bitcoin_history() do
    url = domain() <> "/deposit_money?currency=BTC"
    HTTPoison.get!(url, headers(url))
  end
end
