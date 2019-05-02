 defmodule ElixirCoincheckClient.API.Rate do
  import ElixirCoincheckClient.API.Base
  def rate(params) do
    url = domain() <> "/rate/" <> String.downcase(params[:pair])
    HTTPoison.get!(url, [])
  end
end
