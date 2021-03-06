Fornecedor = Pessoa.create() -- Fazer fornecedor herdar de Pessoa
Fornecedor.__index = Fornecedor -- Criar metatable de Fornecedor

-- Função criadora da classe Fornecedor
function Fornecedor.create(id, nome, endereco, telefone, cnpj, contato)
  local fornecedor = Pessoa.create(id, nome, endereco, telefone) -- Novo objeto da classe Pessoa
  setmetatable(fornecedor,Fornecedor)                            -- Fazer objeto pertencer à metatable Fornecedor

  -- Variáveis da classe
  fornecedor.cnpj = cnpj
  fornecedor.contato = contato
  fornecedor.credito = 0

  return fornecedor
end

-- Imprime objetos da classe fornecedor no formato:
-- *nome*;J;*cnpj*;*contato*;*telefone*;R$ *credito*
function Fornecedor:__tostring()
  return self.nome .. ";" .. self.cnpj .. ";" .. self.contato .. ";" .. self.telefone .. ";R$ " .. string.format("%.2f",self.credito)
end

-- Soma cred ao crédito do fornecedor
function Fornecedor:setCredito(cred)
  self.credito = self.credito + cred
end
  
