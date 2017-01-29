ExUnit.start()

defmodule F do
	def mapsum(list, func) do
		Enum.map(list, func)
		|> Enum.reduce(0, &(&1 + &2))

	end

	def max(list), do: Enum.reduce(list, 0, fn (value, acc) -> value > acc && value || acc end)

	def caesar(list, n), do: Enum.map(list, &(rem(&1 - 97 + n, 26) + 97))

	def span(from, to) when from > to, do: []
	def span(a, a), do: [a]
	def span(from, to), do: [from | span(from + 1, to)]
end

defmodule T do
	use ExUnit.Case

	assert F.mapsum([1, 2, 3], &(&1 * 2)) == 12

	assert F.max([1, 2, 3]) == 3 
	assert F.max([1, 5, 3]) == 5
	assert F.max([7, 5, 3]) == 7

	assert F.caesar('abc', 2)  == 'cde'
	assert F.caesar('abc', 23) == 'xyz'
	assert F.caesar('abc', 26) == 'abc'

	assert F.span(1, 1) == [1]
	assert F.span(1, 5) == [1, 2, 3, 4, 5]
	assert F.span(7, 5) == []
end