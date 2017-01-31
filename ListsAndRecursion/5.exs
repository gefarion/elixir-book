ExUnit.start()

defmodule F do
	
	def all?([], _), do: true
	def all?([ head | tail ], f), do: f.(head) and all?(tail, f)

	def each([], _), do: {}
	def each([ head | tail ], f) do
		f.(head)
		each(tail, f)
	end

	def filter([], _), do: []
	def filter([ head | tail ], f) do
		if f.(head) do
			[ head | filter(tail, f) ]
		else
			filter(tail, f)
		end
	end

	defp _reverse([], list), do: list
	defp _reverse([ head | tail ], list), do: _reverse(tail, [head | list])
	def reverse(list), do: _reverse(list, [])


	defp _split(list, 0, acc), do: { reverse(acc), list }
	defp _split([ head | tail ], n, acc), do: _split(tail, n - 1, [head | acc])

	def split(list, n), do: _split(list, n, [])

	def take([], _), do: []
	def take(_, 0), do: []
	def take([ head | tail], n), do: [head | take(tail, n - 1)]
end

defmodule T do
	use ExUnit.Case

	assert F.all?([1, 2, 3], &(&1 > 0)) == true
	assert F.all?([1, -2, 3], &(&1 > 0)) == false


	assert F.filter([1, 2, 3, 5], &(&1 > 2)) == [3, 5]

	assert F.reverse([1, 2, 3, 4]) == [4, 3, 2, 1]
	
	assert F.split([1, 2, 3, 4], 0) == {[], [1, 2, 3, 4]}
	assert F.split([1, 2, 3, 4], 1) == {[1], [2, 3, 4]}
	assert F.split([1, 2, 3, 4], 2) == {[1, 2], [3, 4]}
	assert F.split([1, 2, 3, 4], 3) == {[1, 2, 3], [4]}
	assert F.split([1, 2, 3, 4], 4) == {[1, 2, 3, 4], []}


	assert F.take([1, 2, 3, 4], 0) == []
	assert F.take([1, 2, 3, 4], 2) == [1, 2]
	assert F.take([1, 2, 3, 4], 10) == [1, 2, 3, 4]

end