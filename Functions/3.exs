ExUnit.start()
defmodule Test do
use ExUnit.Case

fizzbuzz = fn 
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> a
end


assert fizzbuzz.(0, 0, 1) == "FizzBuzz"
assert fizzbuzz.(0, 1, 2) == "Fizz"
assert fizzbuzz.(1, 0, 2) == "Buzz"
assert fizzbuzz.(1, 2, 3) == 3

func = fn n -> fizzbuzz.(rem(n, 3), rem(n, 5), n) end

IO.puts func.(10)
IO.puts func.(11)
IO.puts func.(12)
IO.puts func.(13)
IO.puts func.(14)
IO.puts func.(15)
IO.puts func.(16)

end
