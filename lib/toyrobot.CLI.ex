defmodule ToyRobot.CLI do
  def main(_args) do
    IO.puts("Welcome to the Toy Robot simulator!")
    get_directive()
  end



def get_directive() do
    f = IO.gets(': ')
    |> String.trim
    |> String.downcase
    |> String.split(" ")
    |> execute
  end

def execute(something) do
    IO.inspect(something)
    get_directive()
end

end