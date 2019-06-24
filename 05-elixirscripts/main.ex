defmodule Prueba do
  def hello do
    :hello
  end
end

defmodule Prueba2 do
  def hello do
    :hello_world
  end
end

# * Para compilar se hace elixirc archivo.ex
# Este genera los archivos beam asociado a los módulos definidos
# ! Para cargar los modulos se hace l(Elixir.modulo)
# i.e. l(Elixir.Prueba)
