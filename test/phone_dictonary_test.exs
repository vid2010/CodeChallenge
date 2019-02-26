defmodule PhoneDictonaryTest do
  use ExUnit.Case
  doctest PhoneDictonary



  test "6686787825" do
    assert PhoneDictonary.number_to_words("6686787825") == [[["MOTOR", "TRUCK"]], [["MOTOR", "USUAL"]],
 [["NOUN", "STRUCK"], ["NOUNS", "TRUCK"]], [["NOUNS", "USUAL"]],
 [["ONTO", "STRUCK"]]]
  end

  test "2282668687" do
    assert PhoneDictonary.number_to_words("2282668687") ==
      [[["ACT", "AMOUNTS"], ["ACTA", "MOUNTS"]], [["ACT","CONTOUR"]], [["BAT", "AMOUNTS"]], [["BAT", "CONTOUR"]], [["CAT", "AMOUNTS"]], [["CAT", "CONTOUR"]]]
  end

test "7782668687" do
  assert PhoneDictonary.number_to_words("7782668687") == [[["PST", "AMOUNTS"]], [["PST", "CONTOUR"]]]
end

  test  "6686787824" do
    assert PhoneDictonary.number_to_words("6686787824") == []
  end
end
