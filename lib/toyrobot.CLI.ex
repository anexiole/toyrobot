defmodule ToyRobot.CLI do
  def main(_args) do
    IO.puts("Toy Robot...\n")
    get_directive()
  end

def get_directive() do
    f = IO.gets(': ')
    |> String.trim
    |> String.downcase
    |> String.split(' ')
    |> execute
  end

def execute(something) do
    get_directive()
end



end