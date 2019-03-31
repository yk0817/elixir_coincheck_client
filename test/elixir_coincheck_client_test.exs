defmodule ElixirCoincheckClientTest do
  use ExUnit.Case
  doctest ElixirCoincheckClient

  test "greets the world" do
    assert ElixirCoincheckClient.hello() == :world
  end
end
