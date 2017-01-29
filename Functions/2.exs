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

end
