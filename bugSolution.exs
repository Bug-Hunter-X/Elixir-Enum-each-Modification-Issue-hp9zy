```elixir
# Solution using Enum.filter (Functional approach)
list = [1, 2, 3, 4, 5]

new_list = Enum.filter(list, fn x -> x != 3 end)

IO.inspect new_list

#Alternative solution using recursion (less idiomatic)
list = [1, 2, 3, 4, 5]

defmodule MyList do
  def remove_element(list, element) do
    remove_element(list, element, [])
  end

  defp remove_element([], _element, acc), do: Enum.reverse(acc)
  defp remove_element([head | tail], element, acc) do
    if head == element do
      remove_element(tail, element, acc)
    else
      remove_element(tail, element, [head | acc])
    end
  end
end

new_list2 = MyList.remove_element(list, 3)
IO.inspect new_list2
```