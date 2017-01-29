ExUnit.start()

defmodule F do
	def sumar([]), do: 0
	def sumar([ head | tail ]), do: head + sumar(tail)
end

defmodule T do
	use ExUnit.Case

	assert F.sumar([1, 2, 3]) == 6
	assert F.sumar([]) == 0
	assert F.sumar([1]) == 1
end