Compra = {}
Compra.__index = Compra

function Compra.create(nF, forn, prod, quant)
  local compra = {}             -- Novo objeto
  setmetatable(compra,Compra)   -- Fazer objeto pertencer à metatable Pessoa
  compra.numNotaFiscal = nF;
  compra.data = os.date("%x")
  compra.vendedor = forn;
  if(getmetatable(compra.vendedor)~=Fornecedor) then
    error("\nErro na criação da compra de nota fiscal "..nF..": \nNão é um fornecedor válido")
  end
  compra.produto = prod;
  if(getmetatable(compra.produto)~=Produto) then
    error("\nErro na criação da compra de nota fiscal "..nF..": \nNão é um produto válido")
  end
  compra.quantidade = quant;
  return compra
end

function Compra:getVendedor()
  return self.vendedor
end

function Compra:getProduto()
  return self.produto
end

function Compra:getQuantidade()
  return self.quantidade
end