Pessoa = {}
Pessoa.__index = Pessoa -- Criar metatable de Pessoa

-- Função criadora da classe Pessoa
function Pessoa.create(id, nome, endereco, telefone)
  local pessoa = {}             -- Novo objeto
  setmetatable(pessoa,Pessoa)   -- Fazer objeto pertencer à metatable Pessoa

  -- Variáveis da classe
  pessoa.codigoIdentificador = id
  pessoa.nome = nome
  pessoa.endereco = endereco
  pessoa.telefone = telefone

  return pessoa
end

-- Retorna o código identificador da Pessoa
function Pessoa:getCod()
  return self.codigoIdentificador
end

-- Retorna o nome da pessoa
function Pessoa:getNome()
	return self.nome
end

-- Função de impressão genérica da classe
function Pessoa:__tostring()
  return self.codigoIdentificador .. ": " .. self.nome
end
  
  
