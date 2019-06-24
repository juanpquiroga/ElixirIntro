defmodule Home do

  # funcion publica puede ser llamada por fuera del modulo
  def products() do
    products_secret()
    IO.inspect("Hola products func")
  end

  # Guards utilizacion del condicional when
  # Valor por defecto en 10
  def products(limit,offset \\ 10) when is_integer(limit) and is_integer(offset) do
    IO.inspect(limit)
    IO.inspect(offset)
    IO.inspect("Guards")
  end

  # Depende de los guards se ejecuta otra función
  def products(limit,offset) when is_binary(limit) and is_binary(offset) do
    IO.inspect("limit y offset no pueden ser strings")
  end

  # Funcion privada no se puede llamar fuera del módulo
  defp products_secret() do
    IO.inspect("Private func")
  end
end

defmodule Categories do

end

# Habilitar colores en iex
# iex> Application.put_env(:elixir, :ansi_enabled, true)
