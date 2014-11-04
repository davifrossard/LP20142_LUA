require "IOUtils.csvutils"
require "IOUtils.parser"
require "Classes.Pessoas.Pessoa"
require "Classes.Pessoas.Cliente"
require "Classes.Pessoas.ClienteFisico"
require "Classes.Pessoas.ClienteJuridico"

fClientes = io.open(arg[1], "r")
io.input(fClientes)
tableClientes = LerClientes(fClientes)
io.close(fClientes)

fFornecedores = io.open(arg[2], "r")
io.input(fFornecedores)
tableFornecedores = LerFornecedores(fFornecedores)
io.close(fFornecedores)

fProdutos = io.open(arg[3], "r")
io.input(fProdutos)
tableProdutos = LerProdutos(fProdutos)
io.close(fProdutos)


fCompras = io.open(arg[4], "r")
io.input(fCompras)
tableCompras, tableProdutos, tableFornecedores= LerCompras(fCompras, tableProdutos, tableFornecedores)
io.close(fCompras)



for key,value in pairs(tableClientes) do
        print(value)
end

for key,value in pairs(tableFornecedores) do
        print(value)
end

for key,value in pairs(tableProdutos) do
        print(value)
end




