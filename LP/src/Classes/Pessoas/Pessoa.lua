Pessoa = {}
Pessoa.__index = Pessoa

function Pessoa.create()
  local pessoa = {}             -- Novo objeto
  setmetatable(pessoa,Pessoa)   -- Fazer objeto pertencer à metatable Pessoa
  return pessoa
end

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

function Pessoa:getCod()
  return self.codigoIdentificador
end

function Pessoa:__tostring()
  return self.codigoIdentificador .. ", " .. self.nome .. ", " .. self.endereco .. ", " .. self.telefone
end
  
  
