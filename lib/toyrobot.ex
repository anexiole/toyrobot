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
    init_position
end

defp init_position() do
  %{ :x => 0, :y => 0 , :f => :north}
end

def place( [x,y,facing]), do: (
    %{ :x => x, :y => y, :f => facing}
)




end
