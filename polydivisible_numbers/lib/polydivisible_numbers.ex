defmodule PolydivisibleNumbers do
  @moduledoc """
  Documentation for `PolydivisibleNumbers`.
  """

  @chars "0123456789"

  def is_polydivisible(s, b) do
    s
    |> String.codepoints()
    |> Enum.with_index(1)
    |> Enum.reduce_while("", fn {number_char, divisor}, acc ->
      number_chars = acc <> number_char
      number = to_base10(number_chars, b)

      if rem(number, divisor) == 0,
        do: {:cont, number_chars},
        else: {:halt, false}
    end) != false
  end

  # def get_polydivisible(n, b) do
  #   # your code here
  # end

  def to_base10(n, b) when is_binary(n) and is_integer(b) do
    n
    |> String.codepoints()
    |> Enum.reverse()
    |> Enum.with_index(0)
    |> Enum.reduce(0, fn {number_char, exponent}, acc ->
      number = index_of(number_char, @chars)
      number * trunc(:math.pow(b, exponent)) + acc
    end)
  end

  def index_of(s, chars) do
    :binary.match(chars, s)
    |> elem(0)
  end
end
