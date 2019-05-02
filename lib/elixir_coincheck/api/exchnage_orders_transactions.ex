defmodule ElixirCoincheckClient.API.ExchangeOrdersTransactions do
  import ElixirCoincheckClient.API.Base
  def transactions() do
    url = domain() <> "/exchange/orders/transactions"
    HTTPoison.get!(url, headers(url))
  end
end
