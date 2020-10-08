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
    %{ :x => 0, :y => 0 , :f => :north}
end

def place( [x,y,f]), do: (
    %{ :x => x, :y => y, :f => f}
)




end
