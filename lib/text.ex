defmodule Test do
  @test letter_map = %{"2" => ["a", "b", "c"], "3" => ["d", "e", "f"], "4" => ["g", "h", "i"],
  "5" => ["j", "k", "l"], "6" => ["m", "n", "o"], "7" => ["p", "q", "r", "s"],
  "8" => ["t", "u", "v"], "9" => ["w", "x", "y", "z"]}


  def number(n) do
    r = [""]
    p = []
    # Enum.map(String.split(n, "", trim: true), fn(x)-> sum_char(Map.get(@test,x),"") end)
    Enum.map(String.split(n, "", trim: true), fn(x)-> Enum.map(Map.get(@test,x), fn(x)->x end) end)
  end

  def sum_char([head|tail], accumulator) do
    sum_char(tail, head <> accumulator)
  end

  def sum_char([], accumulator) do
    accumulator
  end
def test() do
  prev = System.os_time(:millisecond)

  {:ok, dictonary} = File.read("lib/dictionary.txt")
  dictonary_list = String.split(dictonary,"\n")
  to_map(dictonary_list,%{})
  next = System.os_time(:millisecond)
  diff = next - prev
end

def to_map([h|t],acc)do
   to_map(t,Map.put(acc, h,h))
end
def to_map([],acc)do
  acc
end
end
