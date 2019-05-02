defmodule ElixirCoincheckClient.API.Base do
  def domain(), do: "https://coincheck.com/api"
  def headers(url, body \\ "") do
    nonce = nonce()
    message = nonce <> url <> body
    [
      "ACCESS-KEY": public_key(),
      "ACCESS-NONCE": nonce,
      "ACCESS-SIGNATURE": signature(message),
      "Content-Type": "application/json"
    ]
  end

  defp signature(message), do: :crypto.hmac(:sha256, private_key(), message ) |> Base.encode16(case: :lower)

  defp nonce(), do: DateTime.utc_now() |> DateTime.to_unix(:microsecond) |> Integer.to_string()

  defp public_key(), do: Application.get_env( :elixir_coincheck_client, :public_key)

  defp private_key(), do: Application.get_env( :elixir_coincheck_client, :private_key)
end
