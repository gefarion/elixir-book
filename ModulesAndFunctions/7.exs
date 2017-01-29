# Convert a float to string
float_to_string = &(:io_lib.format("~.2f", [&1]))
IO.puts float_to_string.(1.4351)

# Get enviroment variable
IO.puts System.get_env("DISPLAY")

# Get the extension of a file
IO.puts Path.extname('/home/pruebas.txt')

# Working dir
IO.puts __DIR__
IO.puts System.cwd

# Execute a system command
IO.inspect System.cmd "date", []


