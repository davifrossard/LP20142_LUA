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

function Produto:getCod()
  return self.codigo;
end

function Produto:getCusto() 
  return self.custo;
end

function Produto:getDescricao() 
  return self.descricao;
end

function Produto:getPercentualLucro() 
  return self.percetualLucro;
end

function Produto:getPreco() 
  return self.custo*;
end

function Produto:getVendidos() 
  return self.vendidos;
end

function Produto:setEstoqueAtual(var) 
  self.estoqueAtual = self.estoqueAtual + var;
end

function Produto:setVendidos(var) 
  self.vendidos = self.vendidos + var;
end
