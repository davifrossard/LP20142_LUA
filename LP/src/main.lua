require "IOUtils.csvutils"
require "IOUtils.parser"
require "Classes.Pessoas.Pessoa"
require "Classes.Pessoas.Cliente"
require "Classes.Pessoas.ClienteFisico"
require "Classes.Pessoas.ClienteJuridico"

assert(os.setlocale('pt_BR.utf8'))

for key,value in ipairs(arg) do
	if (value == "-c") then
		nameFileCliente = arg[key+1]
	elseif (value == "-f") then
		nameFileFornecedor = arg[key+1]
	elseif (value == "-p") then
		nameFileProduto = arg[key+1]
	elseif (value == "-a") then
		nameFileCompras = arg[key+1]
	elseif (value == "-v") then
		nameFileVendas = arg[key+1]
	end
end

fClientes = io.open(nameFileCliente, "r")
io.input(fClientes)
tableClientes = LerClientes(fClientes)
io.close(fClientes)

fFornecedores = io.open(nameFileFornecedor, "r")
io.input(fFornecedores)
tableFornecedores = LerFornecedores(fFornecedores)
io.close(fFornecedores)

fProdutos = io.open(nameFileProduto, "r")
io.input(fProdutos)
tableProdutos = LerProdutos(fProdutos)
io.close(fProdutos)

fCompras = io.open(nameFileCompras, "r")
io.input(fCompras)
tableCompras, tableProdutos, tableFornecedores = LerCompras(fCompras, tableProdutos, tableFornecedores)
io.close(fCompras)

fVendas = io.open(nameFileVendas, "r")
io.input(fVendas)
tableVendas, tableProdutos, tableClientes = LerVendas(fVendas, tableProdutos, tableClientes)
io.close(fVendas)


function ordnome(a, b)
	return a:getNome() < b:getNome()
end

function orddesc(a, b)
	return a:getDescricao()  < b:getDescricao() 
end


listaClientes = {}
listaFornecedores = {}
listaProdutos = {}


for _,value in pairs(tableClientes) do
	table.insert(listaClientes, value)
end

table.sort(listaClientes, ordnome)


for _,value in pairs(tableFornecedores) do
	table.insert(listaFornecedores, value)
end

table.sort(listaFornecedores, ordnome)


for _,value in pairs(tableProdutos) do
	table.insert(listaProdutos, value)
end

table.sort(listaProdutos, orddesc)

saidaCliente = io.open("areceber.csv", "w")
io.output(saidaCliente)

io.write("Cliente;Tipo;CPF/CNPJ;Telefone;Data de cadastro;Total a pagar\n")
for _,value in ipairs(listaClientes) do
	io.write(value:__tostring()..'\n')
end
io.close(saidaCliente)

saidaFornecedor = io.open("apagar.csv", "w")
io.output(saidaFornecedor)
io.write("Fornecedor;CNPJ;Pessoa de contato;Telefone;Total a pagar\n")
for _,value in ipairs(listaFornecedores) do
	io.write(value:__tostring()..'\n')
end
io.close(saidaFornecedor)


saidaProdutos = io.open("estoque.csv", "w")
io.output(saidaProdutos)
io.write("Código;Produto;Quantidade em estoque;Observações\n")
for _,value in ipairs(listaProdutos) do
	io.write(value:__tostring()..'\n')
end
io.close(saidaProdutos)






