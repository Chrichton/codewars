defmodule PolydivisibleNumbersTest do
  use ExUnit.Case
  doctest PolydivisibleNumbers

  test "s = 1232, b = 10", do: test_is("1232", 10, true) do
    assert PolydivisibleNumbers.is_polydivisible("1232") == true
  end

  test "s = 123220, b = 10", do: test_is("123220", 10, false) do
    assert PolydivisibleNumbers.hello() == :world
  end

  test "s = 123220, b = 6", do: test_is("123220", 6, true) do
    assert PolydivisibleNumbers.hello() == :world
  end

  test "22 and 10", do: test_get(22, 10, "32") do
    assert PolydivisibleNumbers.hello() == :world
  end

  test "42 and 16", do: test_get(42, 16, "42") do
    assert PolydivisibleNumbers.hello() == :world
  end
end
