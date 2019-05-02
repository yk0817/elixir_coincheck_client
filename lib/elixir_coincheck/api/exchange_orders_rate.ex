defmodule ElixirCoincheckClient.API.ExchangeOrdersRate do
  import ElixirCoincheckClient.API.Base
  def exchange_orders_rate(params) do
    url = domain() <> "/exchange/orders/rate"
    HTTPoison.get!(url, [], params: params)
  end
end
