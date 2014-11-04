ClienteFisico = Cliente.create() -- Fazer ClienteFisico herdar de Cliente
ClienteFisico.__index = ClienteFisico -- Criar metatable de ClienteFisico

-- Função criadora da classe ClienteFisico
function ClienteFisico.create(id, nome, endereco, telefone, cpf)
  local clienteF = Cliente.create(id, nome, endereco, telefone) -- Novo objeto da classe Pessoa
  setmetatable(clienteF,ClienteFisico)                          -- Fazer objeto pertencer à metatable Cliente

  -- Variáveis da classe
  clienteF.cpf = cpf

  return clienteF
end

-- Imprime objetos da classe cliente no formato:
-- *nome*;F;*cpf*;*telefone*;*dataCadastro*;R$ *divida*
function ClienteFisico:__tostring()
  return self.nome .. ";F;" .. self.cpf .. ";" .. self.telefone .. ";" .. self.dataCadastro .. ";R$ " .. string.format("%.2f",self.divida)
end
