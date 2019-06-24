defmodule Prueba do
  # if es una macro
  def check_if do
    if return_true() do
      :true
    else
      :false
    end
  end

  def return_true do
    if 1+1 == 2 do
      true
    else
      false
    end
  end

  def return_false do
    false
  end

  # Unless es una macro funcional al contrario de if
  def check_unless do
    unless true do
      :false
    else
      :true
    end
  end

  # Instruccion relacionada con pattern matching
  def check_case(val) do
    case return_diff_val(val) do
      {:ok,value} -> IO.puts( value )
      {:ok_less,value} -> IO.puts( value )
      _ -> IO.inspect("Valor no reconocido")
    end
  end

  def return_diff_val(value) do
    if value > 10 do
      { :ok, value + 10 }
    else
      { :ok_less, value + 20 }
    end
  end

  def check_case2(val) do
    new_val = 20
    case return_diff_val(val) do
      {:ok,^new_val} -> IO.puts( new_val )
      {:ok_less,^new_val} -> IO.puts( new_val )
      _ -> IO.inspect("Valor no reconocido")
    end
  end

  # Equivale a if else if else if
  def check_cond do
    cond do
      1+2 == 2 -> "Primera instruccion"
      2-2 == 4 -> "Segunda instruccion"
      3+4 == 7 -> "Tercera instruccion"
      true -> "Valor por defecto"
    end
  end
end

# Recompilar desde iex
# * c("main.ex")
# Releer
# * r(Prueba)

