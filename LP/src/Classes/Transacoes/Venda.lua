Venda = {}
Venda.__index = Venda -- Criar metatable de Vendas

-- Função criadora da classe Venda
function Venda.create(comprador, mP, quant, prod)
  local venda = {}            -- Novo objeto
  setmetatable(venda,Venda)   -- Fazer objeto pertencer à metatable Venda

	--Variáveis da classe
  venda.data = os.date("%x")
  venda.comprador = comprador;
  venda.meioPagamento = mP;
  venda.quantidade = quant;
  venda.produto = prod;

	--Validação dos dados  
  if(getmetatable(venda.comprador)~=ClienteFisico and getmetatable(venda.comprador)~=ClienteJuridico) then
    error("\nErro na criação da venda do dia "..venda.data..": \nNão é um cliente válido")
  end
  if(getmetatable(compra.produto)~=Produto) then
    error("\nErro na criação da venda do dia "..venda.data..": \nNão é um produto válido")
  end

  return venda
end

-- Retorna o comprador da venda.
function Venda:getComprador()
  return self.comprador
end

-- Retorna o produto vendido.
function Venda:getProduto()
  return self.produto
end

-- Retorna a quantidade de produtos vendidos.
function Venda:getQuantidade()
  return self.quantidade
end  
