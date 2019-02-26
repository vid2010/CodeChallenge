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

