# Caracter a
value1 = ?a
IO.puts(value1)

# Caracter A
value2 = ?A
IO.puts(value2)

value3 = ?ñ
IO.puts(value3)

value4 = ?Ů
IO.puts(value4)

name = "HolaŮęĩƜ"
IO.puts(name)
# La longitud sigue siendo 8
IO.puts(String.length(name))
# ocupa 12 bytes dado que los últimos caracteres
# requieren 2 bytes cada uno
IO.puts(byte_size(name))

grafemas = String.codepoints(name)
IO.puts(is_list(grafemas))
IO.puts( length(grafemas))

# Binary
# << binary >>
valueBin = <<0,1,2,3,4,5>>
IO.puts( valueBin )

# se trunca a 0 porque es mas de un byte
valueBin2 = <<256>>
IO.puts( valueBin2 )

# Almacena en dos bytes
valueBin3 = <<256::size(16)>>
IO.puts( valueBin3 )

# Almacenas en 10 bits
valueBin4 = <<256::size(10)>>

#Son bitstrings
valueBin5 = <<1::size(1)>>
IO.puts(is_binary(valueBin5))
IO.puts(is_bitstring(valueBin5))

# Funciona pattern matching
<<0,1,2,x>> = <<0,1,2,5>>
IO.puts(x)

<<0,1,2,x::binary>> = <<0,1,2,5,6,7>>
<<header::size(16),remaining::binary>> = <<1,2,3,4,5,6,7>>
