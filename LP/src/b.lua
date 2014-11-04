require "IOUtils.csvutils"
require "IOUtils.parser"
require "Classes.Pessoas.Pessoa"
require "Classes.Pessoas.Cliente"
require "Classes.Pessoas.ClienteFisico"
require "Classes.Pessoas.ClienteJuridico"

-- Opens a file in read
file = io.open(arg[1], "r")

-- sets the default input file as test.lua
io.input(file)

clientes = LerClientes(file)

print(clientes[1])
print(clientes[2])
print(clientes[3])
print(clientes[4])
print(clientes[5])

-- closes the open file
io.close(file)
