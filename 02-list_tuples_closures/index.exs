# ***********
# Listas
# ***********

# list es una lista encadenada
list = [1,2,3,4,"name",true,:false]
IO.puts(length(list))

# Head and tail
list2 = [1,2,3,4]
primerElem = hd(list2)
restoElms = tl(list2)
IO.puts(primerElem)
IO.puts(length(restoElms))

# Concatenar listas
list3 = list2 ++ list
IO.puts(length(list3))

# Eliminar de la lista
list4 = list2 -- [1]
IO.puts(length(list4))

list5 = list2 -- []
IO.puts(length(list5))

# ***********
# Tuplas
# ***********

tupla1 = {1,2,3,4,"name",true}
{a,b,c,d,e,f} = tupla1
IO.puts("#{a} #{b} #{c} #{d} #{e} #{f}")

value = tuple_size(tupla1)
IO.puts(value)

# *****************************
# Closures - Funciones anónimas
# *****************************

func = fn(a,b) -> a+b end
IO.puts( func.(1, 2) )
