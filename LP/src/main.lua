require "Classes.Pessoas.Cliente"
require "Classes.Pessoas.ClienteFisico"
require "Classes.Pessoas.ClienteJuridico"

P1 = ClienteFisico.create(123, "Davi", "Rua Helsinki, 62", "33390210", 14005961738)
P2 = Cliente.create(321, "Rodolfo", "Rua dos chupintos", 696969696);
P3 = ClienteJuridico.create(321, "Rodrigo", "Rua da malandraj", 64353, 65464, 34534)
print(P1)
print(P2)
print(P3)