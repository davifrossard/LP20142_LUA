ClienteJuridico = Cliente.create()
ClienteJuridico.__index = ClienteJuridico

function ClienteJuridico.create(id, nome, endereco, telefone, cnpj, cadEst)
  local clienteJ = Cliente.create(id, nome, endereco, telefone) -- Novo objeto da classe Pessoa
  setmetatable(clienteJ,ClienteJuridico)                          -- Fazer objeto pertencer à metatable Cliente
  -- Variáveis da classe
  clienteJ.cnpj = cnpj
  clienteJ.cadEst = cadEst
  return clienteJ
end

function ClienteJuridico:__tostring()
  return self.nome .. ";J;" .. self.cnpj .. ";" .. self.telefone .. ";" .. self.dataCadastro .. ";R$ " .. string.format("%.2f",self.divida)
end  