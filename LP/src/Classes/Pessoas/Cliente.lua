Cliente = Pessoa.create() -- Fazer cliente herdar de Pessoa
Cliente.__index = Cliente -- Criar metatable de Cliente

-- Função criadora da classe Cliente
function Cliente.create(id, nome, endereco, telefone)
  local cliente = Pessoa.create(id, nome, endereco, telefone) -- Novo objeto da classe Pessoa
  setmetatable(cliente,Cliente)                               -- Fazer objeto pertencer à metatable Cliente

  -- Variáveis da classe
  cliente.dataCadastro = os.date("%x");
  cliente.divida = 0;

  return cliente
end

-- Soma div à divida do cliente
function Cliente:setDivida(div)
  self.divida = self.divida + div
end
