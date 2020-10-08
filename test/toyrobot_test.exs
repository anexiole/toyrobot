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

  test "calling move within the grid will be accepted"
    assert TOYROBOT.move( %{:x => 0,:y => 0,:f => 'north'} ) == %{ :x => 0, :y => 1 , :f => 'north'}
  end

  test "calling move within the grid will be accepted"
    assert TOYROBOT.move( %{:x => 4,:y => 2,:f => 'north'} ) == %{:x => 4,:y => 3,:f => 'north'}
  end

  test "calling move resulting the robot to be outside the grid will be ignored"
    assert TOYROBOT.move( %{:x => 4,:y => 2,:f => 'east'} ) == %{:x => 4,:y => 2,:f => 'east'}
  end

  test "calling move resulting the robot to be outside the grid will be ignored"
    assert TOYROBOT.move( %{:x => 0,:y => 4,:f => 'west'} ) == %{:x => 0,:y => 4,:f => 'west'}
  end


end
