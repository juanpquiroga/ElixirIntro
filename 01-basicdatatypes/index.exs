# entero
value = 1
IO.puts(value)
IO.puts(is_integer(value))

# binario
value2 = 0b1111
IO.puts(value2)

# octal
value3 = 0o111
IO.puts(value3)

# hexadecimal
value4 = 0x1F
IO.puts(value4)

# Flotante
value5 = 1/2
IO.puts(value5)
IO.puts(is_float(value5))

# Atom
:abcd
IO.puts(:abcd)
IO.puts(is_atom(:abcd))

:a = :a
5 = 5
IO.puts(5==5)
IO.puts(true)
IO.puts(false)
IO.puts(true == :true)
IO.puts(false == :false)

# Strings son binaries en elixir
value6 = "Hello my name is JPQ"
IO.puts(value6)
IO.puts(is_binary(value6))


