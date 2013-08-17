defmodule Teenager do
  def hey(message) do
    cond do
      is_reticent?(message) -> "Fine. Be that way."
      is_shouting?(message) -> "Woah, chill out!"
      is_question?(message) -> "Sure."
      true                  -> "Whatever."
    end
  end

  defp is_reticent?(message) do
    "" == message
  end

  defp is_shouting?(message) do
    String.upcase(message) == message
  end

  defp is_question?(message) do
    String.last(message) == "?"
  end
end

