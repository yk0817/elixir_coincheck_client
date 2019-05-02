defmodule ElixirCoincheckClient.API.OrderBooks do
  import ElixirCoincheckClient.API.Base
  def order_books() do
    url = domain() <> "/order_books"
    HTTPoison.get!(url)
  end
end
