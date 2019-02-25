defmodule PhoneDictonary do
  @directory %{"2" => ["A", "B", "C"], "3" => ["D", "E", "F"], "4" => ["G", "H", "I"],
  "5" => ["J", "K", "L"], "6" => ["M", "N", "O"], "7" => ["P", "Q", "R", "S"],
  "8" => ["T", "U", "V"], "9" => ["W", "X", "Y", "Z"]}

  @moduledoc """
  PhoneDictonary module for mapping phone number to given dictonary of words
  """

  @doc """
  Hello world.

  ## Examples

      iex> PhoneDictonary.number_to_words
      :world

  """
  # this method will take number of ten digit as a input
  def number_to_words(number) do
     {:ok, dictonary} = File.read("lib/dictionary.txt")
     dictonary_list = String.split(dictonary,"\n")
     to_map(dictonary_list,%{})
  end

 #this method will conver list of string to map recursively
  def to_map([h|t],acc)do
     to_map(t,Map.put(acc, h,h))
  end

  def to_map([],acc)do
    acc
  end
end
