ExUnit.start()

defmodule Times do
	def double(a) do
		a * 2
	end

	def triple(a) do
		a * 3
	end

	def quadruple(a) do
		double(double(a))
	end
end

defmodule Test do
use ExUnit.Case

assert Times.double(3) == 6
assert Times.triple(3) == 9
assert Times.quadruple(3) == 12

end
