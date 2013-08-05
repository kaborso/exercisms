defmodule Teenager do
  def asky?(message) do
    case message do
      "Does this cryogenic chamber make me look fat?" -> true
      _ -> false
    end
  end

  defp statement?(message) do
    case message do
      "Tom-ay-to, tom-aaaah-to." -> true
      "Let's go make out behind the gym!" -> true
      _ -> false
    end
  end

  defp shouty?(message) do
    case message do
      "WATCH OUT!" -> true
      "1, 2, 3 GO!" -> true
      _ -> false
    end
  end

  def hey(message) when statement?(message) do
   "Whatever."
  end

  def hey(message) when shouty?(message) do
    "Woah, chill out!"
  end

  def hey(message) when asky?(message) do
    "Sure."
  end


end

