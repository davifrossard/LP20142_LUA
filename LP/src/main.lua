require "Classes.Pessoas.Pessoa"
require "Classes.Pessoas.Cliente"
require "Classes.Pessoas.ClienteFisico"
require "Classes.Pessoas.ClienteJuridico"
require "Classes.Pessoas.Fornecedor"
require "Classes.Transacoes.Compra"
require "Classes.Transacoes.Produto"
require "Classes.Transacoes.Venda"

P1 = ClienteFisico.create(123, "Davi", "Rua Helsinki, 62", "33390210", 14005961738)
P2 = ClienteJuridico.create(321, "Rodrigo", "Rua da malandraj", 64353, 65464, 34534)
P3 = Fornecedor.create(321, "Vitin", "Rua de quem fode o leozin", 1234123, 1231, "Robertinha")
P5 = Produto.create(1234, "Rexona", 1, 20, 50.42, 20)
P4 = Compra.create(123, P3, P5, 2)

print(P1)
print(P2)
print(P3)
print("\n")

P3:setCredito(100)
print(P3)
P2:setDivida(100)
print(P2)

print(P4)
print(P5)
