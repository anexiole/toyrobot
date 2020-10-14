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

  test "calling move within the grid will be accepted 1" do
    assert TOYROBOT.move( %{:x => 0,:y => 0,:f => 'north'} ) == %{ :x => 0, :y => 1 , :f => 'north'}
  end

  test "calling move within the grid will be accepted 2" do 
    assert TOYROBOT.move( %{:x => 4,:y => 2,:f => 'north'} ) == %{:x => 4,:y => 3,:f => 'north'}
  end

  test "calling move resulting the robot to be outside the grid will be ignored 1" do 
    assert TOYROBOT.move( %{:x => 4,:y => 2,:f => 'east'} ) == %{:x => 4,:y => 2,:f => 'east'}
  end

  test "calling move resulting the robot to be outside the grid will be ignored 2" do
    assert TOYROBOT.move( %{:x => 0,:y => 4,:f => 'west'} ) == %{:x => 0,:y => 4,:f => 'west'}
  end

  test "calling report will reveal the current position 1" do
    assert TOYROBOT.report( %{:x => 0,:y => 4,:f => 'west'} ) == %{:x => 0,:y => 4,:f => 'west'}
  end
  
  test "calling report will reveal the current position 2" do
    assert TOYROBOT.report( %{:x => 2,:y => 0,:f => 'north'} ) == %{:x => 2,:y => 0,:f => 'north'}
  end

  test "calling left when robot is on the top most y-pane and facing east will be ignored" do
    assert TOYROBOT.left( %{:x => 2,:y => 4,:f => 'east'} ) == %{:x => 2,:y => 4,:f => 'east'}
  end

  test "calling left when robot is on the left most x-pane and facing north will be ignored" do
    assert TOYROBOT.left( %{:x => 0,:y => 4,:f => 'north'} ) == %{:x => 0,:y => 4,:f => 'north'}
  end

  test "calling left when the robot is on the bottom most y-pane and facing west will be ignored" do
    assert TOYROBOT.left( %{:x => 3,:y => 0,:f => 'west'} ) == %{:x => 3,:y => 0,:f => 'west'}
  end

  test "calling left when the robot is on the right most x-pane and facing south will be ignored" do
    assert TOYROBOT.left( %{:x => 4,:y => 2,:f => 'south'} ) == %{:x => 4,:y =>2 ,:f => 'south'}
  end

  test "calling left when facing north" do
    assert TOYROBOT.left( %{:x => 3,:y => 0,:f => 'north'} ) == %{:x => 2,:y => 0,:f => 'north'}
  end

   test "calling left when facing south" do
    assert TOYROBOT.left( %{:x => 3,:y => 0,:f => 'south'} ) == %{:x => 4,:y => 0,:f => 'south'}
  end 

    test "calling left when facing east" do
    assert TOYROBOT.left( %{:x => 3,:y => 1,:f => 'east'} ) == %{:x => 3,:y => 2,:f => 'east'}
  end

  test "calling left when facing west" do
    assert TOYROBOT.left( %{:x => 3,:y => 1,:f => 'west'} ) == %{:x => 3,:y => 0,:f => 'west'}
  end

 test "calling right when robot is on the bottom most y-pane and facing east will be ignored" do
    assert TOYROBOT.right( %{:x => 0,:y => 4,:f => 'east'} ) == %{:x => 2,:y => 4,:f => 'east'}
  end

  test "calling right when robot is on the right most x-pane and facing north will be ignored" do
    assert TOYROBOT.right( %{:x => 4,:y => 4,:f => 'north'} ) == %{:x => 4,:y => 4,:f => 'north'}
  end

  test "calling right when the robot is on the top most y-pane and facing west will be ignored" do
    assert TOYROBOT.right( %{:x => 3,:y => 4,:f => 'west'} ) == %{:x => 3,:y => 4,:f => 'west'}
  end

  test "calling right when the robot is on the bottom most x-pane and facing south will be ignored" do
    assert TOYROBOT.right( %{:x => 0,:y => 3,:f => 'west'} ) == %{:x => 0,:y =>3,:f => 'south'}
  end


  test "calling right when facing north" do
    assert TOYROBOT.right( %{:x => 3,:y => 0,:f => 'north'} ) == %{:x => 2,:y => 0,:f => 'north'}
  end

   test "calling right when facing south" do
    assert TOYROBOT.right( %{:x => 3,:y => 0,:f => 'south'} ) == %{:x => 4,:y => 0,:f => 'south'}
  end 

    test "calling right when facing east" do
    assert TOYROBOT.right( %{:x => 3,:y => 1,:f => 'east'} ) == %{:x => 3,:y => 2,:f => 'east'}
  end

  test "calling right when facing west" do
    assert TOYROBOT.right( %{:x => 3,:y => 1,:f => 'west'} ) == %{:x => 3,:y => 0,:f => 'west'}
  end

end
