defmodule TOYROBOTTest do
  use ExUnit.Case
  doctest TOYROBOT

  test "greets the world" do
    assert TOYROBOT.hello() == :world
  end
end
