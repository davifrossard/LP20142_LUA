require "IOUtils.csvutils"
require "Classes.Pessoas.Pessoa"
require "Classes.Pessoas.Cliente"
require "Classes.Pessoas.ClienteFisico"
require "Classes.Pessoas.ClienteJuridico"

function LerClientes (file)
	local count = 1
	tableClientes = {}
	while true do
		local line = io.read()
		if line == nil then 
			break 
		end
		t = fromCSV(line)

		if (t[6] == 'J' or t[6] == 'j') then
			cliente = ClienteJuridico.create(t[1], t[2], t[3], t[4], t[7], t[8])
			tableClientes[count] = cliente
			count = count + 1
		elseif (t[6] == 'F' or t[6] == 'f') then
			cliente = ClienteFisico.create(t[1], t[2], t[3], t[4], t[7])
			tableClientes[count] = cliente
			count = count + 1
	 	else
			print("Cliente Inválido")
		end
	end

	return tableClientes
end
	

function LerFornecedores (file)
	local count = 1
	tableClientes = {}
	while true do
		local line = io.read()
		if line == nil then 
			break 
		end
		t = fromCSV(line)

		if (t[6] == 'J' or t[6] == 'j') then
			cliente = ClienteJuridico.create(t[1], t[2], t[3], t[4], t[7], t[8])
			tableClientes[count] = cliente
			count = count + 1
		elseif (t[6] == 'F' or t[6] == 'f') then
			cliente = ClienteFisico.create(t[1], t[2], t[3], t[4], t[7])
			tableClientes[count] = cliente
			count = count + 1
	 	else
			print("Cliente Inválido")
		end
	end
	return tableClientes
end

<1código>;<2nome>;<3endereço>;<4telefone>;<5cnpj>;<6pessoa de contato>

function LerProdutos (file)
	local count = 1
	tableProdutos = {}
	while true do
		local line = io.read()
		if line == nil then 
			break 
		end
		t = fromCSV(line)

		cliente = ClienteJuridico.create(t[1], t[2], t[3], t[4], t[7], t[8])
		tableClientes[count] = cliente
		count = count + 1
	end
	return tableClientes	
end

function LerCompras (file, mapas)

end

function LerVendas (file, mapas, mpag)

end
