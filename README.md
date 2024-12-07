# Elixir Enum.each Modification Issue

This example demonstrates a common pitfall in Elixir when attempting to modify a list while iterating using `Enum.each`.  The code intends to remove the element `3` from the list, but it fails because Elixir lists are immutable.  The `List.delete` function creates a *new* list instead of modifying the original list in place.

The solution showcases how to correctly remove elements from a list while iterating, using `Enum.filter` for a functional approach, or using recursion for a more direct approach although less idiomatic Elixir.

## How to Reproduce
1. Save the code in `bug.exs`.
2. Run the code using `elixir bug.exs`.
3. Observe that the element 3 is not removed from the original list.