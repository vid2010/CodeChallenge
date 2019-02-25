defmodule PhoneDictonaryTest do
  use ExUnit.Case
  doctest PhoneDictonary

  test "greets the world" do
    assert PhoneDictonary.hello() == :world
  end
end
