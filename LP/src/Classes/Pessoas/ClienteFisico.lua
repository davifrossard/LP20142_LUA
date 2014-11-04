ClienteFisico = Cliente.create()
ClienteFisico.__index = ClienteFisico

function ClienteFisico.create(id, nome, endereco, telefone, cpf)
  local clienteF = Cliente.create(id, nome, endereco, telefone) -- Novo objeto da classe Pessoa
  setmetatable(clienteF,ClienteFisico)                          -- Fazer objeto pertencer à metatable Cliente
  -- Variáveis da classe
  clienteF.cpf = cpf
  return clienteF
end

function ClienteFisico:__tostring()
  return self.nome .. ";F;" .. self.cpf .. ";" .. self.telefone .. ";" .. self.dataCadastro .. ";R$ " .. string.format("%.2f",self.divida)
end