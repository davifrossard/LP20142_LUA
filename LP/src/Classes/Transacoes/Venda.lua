Venda = {}
Venda.__index = Venda

function Venda.create(comprador, mP, quant, prod)
  local venda = {}             -- Novo objeto
  setmetatable(venda,Venda)   -- Fazer objeto pertencer à metatable Pessoa
  venda.data = os.date("%x")
  venda.comprador = comprador;
  venda.meioPagamento = mP;
  venda.quantidade = quant;
  venda.produto = prod;
  return venda
end

function Venda:getComprador()
  return self.comprador
end

function Venda:getProduto()
  return self.produto
end

function Venda:getQuantidade()
  return self.quantidade
end  