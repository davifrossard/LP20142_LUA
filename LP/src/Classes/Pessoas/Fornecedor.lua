Fornecedor = Pessoa.create()
Fornecedor.__index = Fornecedor

function Fornecedor.create(id, nome, endereco, telefone, cnpj, contato)
  local fornecedor = Pessoa.create(id, nome, endereco, telefone) -- Novo objeto da classe Pessoa
  setmetatable(fornecedor,Fornecedor)                               -- Fazer objeto pertencer à metatable Fornecedor
  -- Variáveis da classe
  fornecedor.cnpj = cnpj
  fornecedor.contato = contato
  fornecedor.credito = 0
  return fornecedor
end

function Fornecedor:__tostring()
  return self.nome .. ";" .. self.cnpj .. ";" .. self.contato .. ";" .. self.telefone .. ";R$ " .. string.format("%.2f",self.credito)
end

function Fornecedor:setCredito(div)
  self.credito = self.credito + div
end
  