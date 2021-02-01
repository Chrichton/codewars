defmodule PolydivisibleNumbers do
  @moduledoc """
  Documentation for `PolydivisibleNumbers`.
  """

  def is_polydivisible(s, b) do
    # your code here
  end

  @chars "0123456789"

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
      number * :math.pow(b, exponent) + acc
    end)
  end

  def index_of(s, chars) do
    :binary.match(chars, s)
    |> elem(0)
  end
end
