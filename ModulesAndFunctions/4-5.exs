ExUnit.start()

defmodule F do

	def sum(0), do: 0
	def sum(n), do: n + sum(n - 1)

	def gdc(x, 0), do: x
	def gdc(x, y), do: gdc(y, rem(x, y))
end

defmodule Test do
use ExUnit.Case

assert F.sum(0) == 0
assert F.sum(1) == 1
assert F.sum(4) == 10

assert F.gdc(4, 2) == 2
assert F.gdc(7, 2) == 1
assert F.gdc(16, 8) == 8

end
