defmodule PhoneDictonary do
  @directory %{"2" => ["A", "B", "C"], "3" => ["D", "E", "F"], "4" => ["G", "H", "I"],
  "5" => ["J", "K", "L"], "6" => ["M", "N", "O"], "7" => ["P", "Q", "R", "S"],
  "8" => ["T", "U", "V"], "9" => ["W", "X", "Y", "Z"]}

  @moduledoc """
  PhoneDictonary module for mapping phone number to given dictonary of words
  """

  @doc """
  number_to_words.

  ##
      n must be String of number
      iex> PhoneDictonary.number_to_words(n)


  """
  @doc """
  # this method will take number of ten digit as a input
  """

  def number_to_words(n) do
    len = String.length(n)
    if(n =~ "0" or n=~ "1") do "Number is not valid it's contained 0 or 1"
  else
     # prev = System.os_time(:millisecond)
     {:ok, dictonary} = File.read("lib/dictionary.txt")
     dictonary_list = String.split(dictonary,"\n")
     dict_map = to_map(dictonary_list,%{})
     n = String.reverse(n)
     # comb(len,String.split(n,"",trim: true),"",[])
     word_list = combine(len,String.split(n,"",trim: true),[])
     Enum.map(word_list, fn(x)-> get_sub_str(x,dict_map) end)|>Enum.filter(fn(x)-> x != [] end)
     # next = System.os_time(:millisecond)
     #   diff = next - prev
     #   IO.puts  diff
    end
  end

  @doc """
  # method for creating sets of substring of words
  """
  def get_sub_str(str,dict_map) do
    len = 3
    getWords(len, str, [],dict_map)
  end

@doc """
# method for getting words from dictonary recursively
used String.split_at which is faster than String.slice
"""
  def getWords(len, str, word_groups,dict_map) when len<=7 do
    # word1 = String.slice(str, 0..(len-1))
    # word2 = String.slice(str,len..-1)
    {word1,word2} = String.split_at(str,len-1)
    if(Map.get(dict_map, word1) != nil and Map.get(dict_map, word2) !=nil) do
      # IO.inspect(word1, label: "word1---")
      word_groups = word_groups ++ [[word1, word2]]
    end
    getWords(len + 1, str, word_groups, dict_map)
  end

  def getWords(_, str, word_groups, _) do
   word_groups
  end

  @doc """
  # this method will combine given number to correspond mapping recursively
  """
  def combine(n,[h|t],acc) when n>=0 do
      combine(n-1, t, add_prefix(Map.get(@directory,h) , "",acc))
  end
  def combine(0,[],acc) do
   acc
  end

  @doc """
  # this method will combine input existing prefix whith the current chars
  """
  def add_prefix(list,prefix,acc) when acc != [] do
   for x <- list, y <- acc, do: x<>y
  end


  @doc """
  # this method will combine input existing prefix whith the current chars and if accumalator setup
     zero then it will match pattern and return same list input
  """
  def add_prefix([h|t],prefix,[])do
        [h|t]
  end

  def add_prefix([], prefix,acc) do
   acc
  end

  @doc """
   #this method will convert list of string to map recursively
   """
  def to_map([h|t],acc)do
     to_map(t,Map.put(acc, h,h))
  end

  def to_map([],acc)do
    acc
  end
end
