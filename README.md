# ElixirCoincheckClient

This is elixir client implementation for Coincheck API.

[hex official](https://hex.pm/packages/elixir_coincheck_client)
[coincheck API page](https://coincheck.com/ja/documents/exchange/api)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `elixir_coincheck_client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:elixir_coincheck_client, "~> 0.1.0"}
  ]
end
```


## usage

```
$ mix deps.get
# you need to set System environment variables (COINCHECK_PUBLIC_KEY , COINCHECK_PRIVATE_KEY)
# [see this](https://github.com/yk0817/elixir_coincheck_client/blob/master/config/config.exs#L4)
$ iex -S mix
# get ticker [official usage](https://coincheck.com/ja/documents/exchange/api#ticker)
$ iex(1)> ElixirCoincheckClient.ticker
# get trades [official usage](https://coincheck.com/ja/documents/exchange/api#trades)
$ iex(2)> ElixirCoincheckClient.trades
# POST usage
$ iex(3)> ElixirCoincheckClient.exchange_orders(%{ amount: 10, order_type: "market_buy", pair: "btc_jpy" }) 
```