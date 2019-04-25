defmodule ElixirCoincheckClient do

  defdelegate ticker, to: ElixirCoincheckClient.API.Ticker

  defdelegate order_books, to: ElixirCoincheckClient.API.OrderBooks

  defdelegate trades, to: ElixirCoincheckClient.API.Trades

end
