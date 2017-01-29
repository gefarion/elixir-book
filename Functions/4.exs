ExUnit.start()
defmodule Test do
use ExUnit.Case

prefix = fn s1 -> (fn s2 -> s1 <> " " <> s2 end) end
mrs = prefix.("Mrs")

assert mrs.("Dardo") == "Mrs Dardo"

end
