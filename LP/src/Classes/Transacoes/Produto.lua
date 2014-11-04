Produto = {}
Produto.__index = Produto

function Produto.create(cod, desc, estMin, estAt, cust, percent)
  local produto = {}              -- Novo objeto
  setmetatable(produto,Produto)   -- Fazer objeto pertencer à metatable Produto
  produto.codigo = cod;
  produto.descricao = desc;
  produto.estoqueMin = estMin;
  produto.estoqueAtual = estAt;
  produto.custo = cust;
  produto.percetualLucro = percent;
  return produto
end

function Produto:__tostring()
  if(self.estoqueAtual >= self.estoqueMin) then
    return self.codigo .. ";" .. self.descricao .. ";" .. self.estoqueAtual .. ";"
  else
    return self.codigo .. ";" .. self.descricao .. ";" .. self.estoqueAtual .. ";COMPRAR MAIS"
  end
end

function getCod()
  return self.codigo;
end

function getCusto() 
  return self.custo;
end

function getDescricao() 
  return self.descricao;
end

function getPercentualLucro() 
  return self.percetualLucro;
end

function getPreco() 
  return self.preco;
end

function getVendidos() 
  return self.vendidos;
end

function setEstoqueAtual(var) 
  self.estoqueAtual = self.estoqueAtual + var;
end

function setVendidos(var) 
  self.vendidos = self.vendidos + var;
end
