# Matcher operator
value = 10
10 = value
5 = 5

# Pattern matching con tuplas
{:a, value} = {:a,10}
IO.puts(value)

{:a, value} = {:a,20}
IO.puts(value)

# Pattern matching con list
[1,2,3,value] = [1,2,3,4]
IO.puts(value)

[1,2,3,value] = [1,2,3,5]
IO.puts(value)

# verificar si value corresponde
# Use the pin operator ^ when you want to pattern match against an existing variable’s value rather than rebinding the variable
[1,2,3,^value] = [1,2,3,5]
IO.puts(value)

# Ignorar valores
[_,_,_,^value] = [2,3,4,5]
IO.puts(value)

pm = fn(a, b) -> if a > b do {:ok,"a > b"} else {:error, "a <= b"} end end

{result, desc} = pm.(3, 6)
IO.puts("#{result} #{desc}")
