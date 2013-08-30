defmodule Words do
  def count(text) when is_binary(text) do
    words = parse text
    count words
  end

  def count(words) when is_list(words) do
    List.foldl words, HashDict.new, &count/2
  end

  def count(word, tallies) do
    Dict.put tallies, word, count(tallies[word])
  end

  def count(nil) do
    1
  end

  def count(tally) do
    tally + 1
  end

  def parse(text) when is_binary(text) do
    parse String.split(text, %r/[\s|\W]+/)
  end

  def parse(text_parts) when is_list(text_parts) do
    List.foldl text_parts, [], fn part, words ->
      if Regex.run %r/([\w|\d]+)/, part do
        word = String.downcase part
        new_words = words ++ [word]
      end
      new_words
    end
  end
end
