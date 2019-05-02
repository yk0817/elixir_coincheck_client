defmodule ElixirCoincheckClient.API.SendBitcoinHistory do
  import ElixirCoincheckClient.API.Base
  def send_bitcoin_history() do
    url = domain() <> "/send_money?currency=BTC"
    HTTPoison.get!(url, headers(url))
  end
end
