require "IOUtils.csvutils"
require "Classes.Pessoas.Pessoa"
require "Classes.Pessoas.Cliente"
require "Classes.Pessoas.ClienteFisico"
require "Classes.Pessoas.ClienteJuridico"
require "Classes.Pessoas.Fornecedor"
require "Classes.Transacoes.Compra"
require "Classes.Transacoes.Produto"
require "Classes.Transacoes.Venda"

function LerClientes (file)
	tableClientes = {}
	io.read()
	while true do
		local line = io.read()
		if line == nil then 
			break 
		end
		t = fromCSV(line)
		
		if (t[6] == 'J' or t[6] == 'j') then
			cliente = ClienteJuridico.create(t[1], t[2], t[3], t[4], t[7], t[8])
			tableClientes[t[1]] = cliente
		elseif (t[6] == 'F' or t[6] == 'f') then
			cliente = ClienteFisico.create(t[1], t[2], t[3], t[4], t[7])
			tableClientes[t[1]] = cliente
	 	else
			print("Cliente Inválido")
		end
	end

	return tableClientes
end
	

function LerFornecedores (file)
	tableClientes = {}
	io.read()
	while true do
		local line = io.read()
		if line == nil then 
			break 
		end
		t = fromCSV(line)

		fornecedor = Fornecedor.create(t[1], t[2], t[3], t[4], t[5],t[6])
		tableClientes[t[1]] = fornecedor
	end
	return tableClientes
end

function LerProdutos (file)
	tableProdutos = {}
	io.read()
	while true do
		local line = io.read()
		if line == nil then 
			break 
		end
		t = fromCSV(line)

		produto = Produto.create(t[1], t[2], t[3], t[4], t[5], t[6])
		tableProdutos[t[1]] = produto
	end
	return tableProdutos	
end

function LerCompras (file, produtos, fornecedores)
	tableCompras = {}
	io.read()
	while true do
		local line = io.read()
		if line == nil then 
			break 
		end
		t = fromCSV(line)
		print(produtos[t[4]].custo)
		compra = Compra.create(t[1], fornecedores[t[2]], produtos[t[4]], t[5])
		tableCompras[t[1]] = compra
		fornecedores[t[2]]:setCredito(t[5]*produtos[t[4]]:getCusto())
		produtos[t[4]]:setEstoqueAtual(t[5])
	end
	return tableProdutos, produtos, fornecedores
end

function LerVendas (file, mapas, mpag)

end
