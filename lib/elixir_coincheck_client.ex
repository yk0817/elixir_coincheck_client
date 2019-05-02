defmodule ElixirCoincheckClient do

  defdelegate ticker, to: ElixirCoincheckClient.API.Ticker

  defdelegate order_books, to: ElixirCoincheckClient.API.OrderBooks

  defdelegate trades, to: ElixirCoincheckClient.API.Trades

  defdelegate exchange_orders_rate(params), to: ElixirCoincheckClient.API.ExchangeOrdersRate

  defdelegate rate(params), to: ElixirCoincheckClient.API.Rate

  defdelegate read_bank_account, to: ElixirCoincheckClient.API.ReadBankAccount

  defdelegate transactions, to: ElixirCoincheckClient.API.ExchangeOrdersTransactions

  defdelegate balance, to: ElixirCoincheckClient.API.Balance

  defdelegate deposit_bitcoin_history, to: ElixirCoincheckClient.API.DepositBitcoinHistory

  defdelegate accounts, to: ElixirCoincheckClient.API.Accounts

  defdelegate send_bitcoin_history, to: ElixirCoincheckClient.API.SendBitcoinHistory

  defdelegate withdraw_history, to: ElixirCoincheckClient.API.WithdrawHistory

  defdelegate record_bank_account(params), to: ElixirCoincheckClient.API.RecordBankAccount

  defdelegate withdraw_execute(params), to: ElixirCoincheckClient.API.WithdrawExecute

  defdelegate exchange_orders(params), to: ElixirCoincheckClient.API.ExchangeOrders
end
