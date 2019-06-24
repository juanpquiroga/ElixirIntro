defmodule Recursion do
  def print_multiple_times(msg, n) when n<=1 do
    IO.puts(msg)
  end

  def print_multiple_times(msg, n) do
    IO.puts(msg)
    print_multiple_times(msg, n-1)
  end

  def print_multiple_times2(msg, n) do
    IO.puts(msg)
    if ( n > 1 ) do
      print_multiple_times2(msg, n-1)
    end
    :ok
  end
end
