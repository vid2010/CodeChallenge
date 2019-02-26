defmodule PhoneDictonary do
  @directory %{"2" => ["A", "B", "C"], "3" => ["D", "E", "F"], "4" => ["G", "H", "I"],
  "5" => ["J", "K", "L"], "6" => ["M", "N", "O"], "7" => ["P", "Q", "R", "S"],
  "8" => ["T", "U", "V"], "9" => ["W", "X", "Y", "Z"]}

  @moduledoc """
  PhoneDictonary module for mapping phone number to given dictonary of words
  """

  @doc """
  Hello world.

  ##
      n must be String of number
      iex> PhoneDictonary.number_to_words(n)


  """
  # this method will take number of ten digit as a input
  def number_to_words(n) do
    len = String.length(n)
    if(n =~ "0" or n=~ "1") do "Number is not valid it's contained 0 or 1"
  else
    prev = System.os_time(:millisecond)
     {:ok, dictonary} = File.read("lib/dictionary.txt")
     dictonary_list = String.split(dictonary,"\n")
     to_map(dictonary_list,%{})

     n = String.reverse(n)
     # comb(len,String.split(n,"",trim: true),"",[])
     combine(len,String.split(n,"",trim: true),[])
     next = System.os_time(:millisecond)
       diff = next - prev
    end
  end
# this method will combine given number to correspond mapping recursively
  def combine(n,[h|t],acc) when n>=0 do
      combine(n-1, t, add_prefix(Map.get(@directory,h) , "",acc))
    end
 def combine(0,[],acc) do
   acc
 end
 def add_prefix(list,prefix,acc) when acc != [] do
   for x <- list, y <- acc, do: x<>y
 end
 def add_prefix([h|t],prefix,[])do
        [h|t]
 end
 def add_prefix([], prefix,acc) do
   acc
 end

 #this method will conver list of string to map recursively
  def to_map([h|t],acc)do
     to_map(t,Map.put(acc, h,h))
  end

  def to_map([],acc)do
    acc
  end
end
