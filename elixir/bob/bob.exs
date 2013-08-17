defmodule Teenager do
  def hey(message) do
    cond do
      reticent?(message) -> "Fine. Be that way."
      shouting?(message) -> "Woah, chill out!"
      question?(message) -> "Sure."
      true               -> "Whatever."
    end
  end

  defp reticent?(message) do
    "" == message
  end

  defp shouting?(message) do
    String.upcase(message) == message
  end

  defp question?(message) do
    String.last(message) == "?"
  end
end

