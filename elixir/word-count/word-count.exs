defmodule Words do
  def count(text) when is_binary(text) do
   count String.split(text)
  end

  def count(list) when is_list(list) do
    List.foldl list, HashDict.new, fn value, acc -> Dict.put(acc, value, 1) end
  end
end
