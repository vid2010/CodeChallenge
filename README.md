# PhoneDictonary

**Phone key Dictonary mapping problem solution in elixir **
## Problem Statement-

Given a 10 digit phone number, you must return all possible words or combination of words from the provided dictionary, that can be mapped back as a whole to the number.
```
2 = a b c
3 = d e f
4 = g h i
5 = j k l
6 = m n o
7 = p q r s
8 = t u v
9 = w x y z
 
The phone numbers will never contain a 0 or 1. 
Words have to be at least 3 characters.

```
## Code Execution steps-
go to your elixir project folder and follow the below steps
## 1 type iex -S mix
## 2 iex> PhoneDictonary.number_to_words(n) where n is the 10 digit number in String formate for e.g "6686787825"
## output :
```
iex(17)> PhoneDictonary.number_to_words("6686787825")
[[["MOTOR", "TRUCK"]], [["MOTOR", "USUAL"]],
 [["NOUN", "STRUCK"], ["NOUNS", "TRUCK"]], [["NOUNS", "USUAL"]],
 [["ONTO", "STRUCK"]]]
 
 ```
 ## Phone number must not contain the "0" or "1"
 ```
 iex(23)> PhoneDictonary.number_to_words("6686787821")
"Number is not valid it's contained 0 or 1"
```
## Problem thought process:

In the given problem we have **dictonary.text** file which contains all words words in csv format. Now
in given problem we have to find the words at least 3 characters. So first convert **dictonary.txt** file into elixir 
map so we will be having map of dictonary have same key value that will help us to fetch or match the inputs from the given words through phone number in neglegible time. Once we done with this then we have to think recursive and tail recursive approach as elixir will support that so we have to breakdown out problem into small steps and then conclude the complete solution by combining them in bottom to top approach. 
once we get the input number from the user we have to iterate through number recursively as in elixir there is no looping like java and other imerative languages so iterate through the number length and for each number we will find the mapping combanations from the given phone number mapping. For finding the all possible characters combinations and converting them into words of list of length 10, we will iterate over mapping input number list of chars and make a possible combinations of words.
Once we will have all the world list after that we will create the sets of 2-2 elements as the results will be combination of **2** words so the minimum length of string should be **3** and maximuxm  should be **7** so by this approach we will be having all possible combinations for each words into word list generated from the phone number.
Once we have the desired list of words then we can map them easily and combine all the results of 2 words set as a output which has been mapped from the dictonary map.


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `phone_dictonary` to your list of dependencies in `mix.exs` and added :ex_doc
dependency for generating the docs for modules and methods:

```elixir
def deps do
  [
    {:phone_dictonary, "~> 0.1.0"}
  ]
end
defp deps do
    [
      {:ex_doc, "~> 0.18.0"}
     ] 
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/phone_dictonary](https://hexdocs.pm/phone_dictonary).

