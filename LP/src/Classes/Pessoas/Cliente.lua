Cliente = Pessoa.create()
Cliente.__index = Cliente

function Cliente.create(id, nome, endereco, telefone)
  local cliente = Pessoa.create(id, nome, endereco, telefone) -- Novo objeto da classe Pessoa
  setmetatable(cliente,Cliente)                               -- Fazer objeto pertencer à metatable Cliente
  -- Variáveis da classe
  cliente.dataCadastro = os.date("%x");
  cliente.divida = 0;
  return cliente
end

function Cliente:__tostring()
  return Pessoa.__tostring(self) .. "\nCadastrado em " .. self.dataCadastro .. "\nDivida de " .. self.divida
end

function Cliente:setDivida(div)
  self.divida = self.divida + div
end