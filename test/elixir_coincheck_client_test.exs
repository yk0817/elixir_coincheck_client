defmodule ElixirCoincheckClientTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney

  doctest ElixirCoincheckClient

  setup_all do
    HTTPoison.start
  end

  test "get balance" do
    use_cassette "coincheck_balance" do
      response = ElixirCoincheckClient.balance
      assert response.body =~ ~r/\"success\":true/
      assert response.status_code == 200
    end
  end

  test "read_bank_account" do
    use_cassette "read_bank_account" do
      response = ElixirCoincheckClient.read_bank_account
      assert response.body =~ ~r/\"success\":true/
      assert response.status_code == 200
    end
  end
end
