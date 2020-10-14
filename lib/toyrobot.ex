defmodule TOYROBOT do
  @moduledoc """
  Documentation for `TOYROBOT`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TOYROBOT.hello()
      :world

  """
  def hello do
    :world
  end

def place() do
    init_position()
end

def place([x, y,facing]) when (x >= 0 and x <= 4 and y >= 0 and y <= 4
       and (facing === 'north' or facing === 'south' or facing ==='west' or facing ==='east') )
do
  %{ :x => x, :y => y, :f => facing}
end

def place(_), do: init_position()

def move(%{ :x => x, :y => y, :f => facing} ) when ( x ==4  and  facing == 'east' )
do
  %{ :x => x, :y => y, :f => facing}
end

def move(%{ :x => x, :y => y, :f => facing}) when ( x ==0  and  facing == 'west' )
do
  %{ :x => x, :y => y, :f => facing}
end

def move(%{ :x => x, :y => y, :f => facing}) when ( y==0  and  facing == 'south' )
do
  %{ :x => x, :y => y, :f => facing}
end

def move(%{ :x => x, :y => y, :f => facing}) when ( y==4  and  facing == 'north' )
do
  %{ :x => x, :y => y, :f => facing}
end

def move(%{ :x => x, :y => y, :f => facing}) when ( x>= 0 and x<=4)
do
  case facing do
     'north' ->
        %{ :x => x, :y => y+1, :f => facing}

     'south' ->
        %{ :x => x, :y => y-1, :f => facing}

     'east' ->
        %{ :x => x+1, :y => y, :f => facing}

     'west' ->
        %{ :x => x-1, :y => y, :f => facing}        
  end  
end

defp init_position() do
  %{ :x => 0, :y => 0 , :f => 'north'}
end

def report (%{ :x => x, :y => y, :f => facing}) do
  %{ :x => x, :y => y, :f => facing}
end

def left(%{ :x => x, :y => y, :f => facing}) when ( ( x==0  and  facing == 'north')
            or (x==4 and facing == 'south')
             or ( y==4  and  facing == 'east')    
             or (y==0 and facing == 'west')
             )
do
  %{ :x => x, :y => y, :f => facing}
end

def left(%{ :x => x, :y => y, :f => facing})
do
  case (facing) do
    'north' -> %{ :x => x-1, :y => y, :f => facing}
    'south' -> %{ :x => x+1, :y => y, :f => facing}
    'east' -> %{ :x => x, :y => y+1, :f => facing}
    'west' -> %{ :x => x, :y => y-1, :f => facing}
  end
end

def right(%{ :x => x, :y => y, :f => facing}) when ( ( x==4  and  facing == 'north')
          or (x==0 and facing == 'south')
             or ( y==0  and  facing == 'east')    
             or (y==4 and facing == 'west')
             )
do
  %{ :x => x, :y => y, :f => facing}
end

def right(%{ :x => x, :y => y, :f => facing})
do
  case (facing) do
    'north' -> %{ :x => x+1, :y => y, :f => facing}
    'south' -> %{ :x => x-1, :y => y, :f => facing}
    'east' -> %{ :x => x, :y => y-1, :f => facing}
    'west' -> %{ :x => x, :y => y+1, :f => facing}
  end
end


end
