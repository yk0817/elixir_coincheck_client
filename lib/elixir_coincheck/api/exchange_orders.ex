defmodule ElixirCoincheckClient.API.ExchangeOrders do
  import ElixirCoincheckClient.API.Base
  def exchange_orders(params) do
    url = domain() <> "/exchange/orders"
    HTTPoison.post!(url, Poison.encode!(params), headers(url, Poison.encode!(params)))
  end
end
