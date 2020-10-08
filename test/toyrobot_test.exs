defmodule TOYROBOTTest do
  use ExUnit.Case
  doctest TOYROBOT

  test "calling place without anything sets me at home" do
    
    assert TOYROBOT.place == %{ :x => 0, :y => 0 , :f => 'north'}
  end

  test "calling place with a valid directive will be accepted" do
    assert TOYROBOT.place( [3, 4, 'west'] ) == %{ :x => 3, :y => 4 , :f => 'west'}
  end

  test "calling place with an invalid directive will be ignored and reset to default" do
    assert TOYROBOT.place([7,-33,'west']) == %{ :x => 0, :y => 0 , :f => 'north'}
  end


end
