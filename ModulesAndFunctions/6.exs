defmodule Chop do

	defp aux(n, n, _, _), do: IO.puts n

	defp aux(n, g, a, _) when n < g do
		IO.puts "Is it #{g}"
		aux(n, div(a + g, 2), a, g)
	end

	defp aux(n, g, _, b) when n > g do
		IO.puts "Is it #{g}"
		aux(n, div(g + b, 2), g, b)
	end

	def guess(num, a..b) when num > b or num < a, do: IO.puts "#{num} is not in range #{a}..#{b}"
	def guess(num, a..b), do: aux(num, div(a + b, 2), a, b + 1)
		
end

Chop.guess(51, 1..100)

