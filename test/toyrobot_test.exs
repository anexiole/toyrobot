defmodule TOYROBOTTest do
  use ExUnit.Case
  doctest TOYROBOT

  test "calling place without anything sets me at home" do
    
    assert TOYROBOT.place == %{ :x => 0, :y => 0 , :f => :north}
  end
end
