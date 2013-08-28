defmodule Words do
  def count(text) when is_binary(text) do
   count String.split(text)
  end

  def count(list) when is_list(list) do
    List.foldl list, HashDict.new, &count/2
  end

  def count(entry, dict) do
    Dict.put(dict, entry, count(dict[entry]))
  end

  def count(nil) do
    1
  end

  def count(num) do
    num + 1
  end
end
