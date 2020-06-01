# Importamos Pyswip
from pyswip import Prolog

# instacionamos el objeto
prolog = Prolog()

# Llamamos el archivo prolog
prolog.consult("platillos.pl")

# Iniciamos contador
conatador = 0

# VD almacenara lo que insgresara el usuario mediante el input
VD = input("Calorias: ")
print("Combinaciones posibles de acuerdo a sus calorias requeridas (",VD," Cal.)")

# Hacemos las consultas a comida_equilibrada() mediante un ciclo FOR
for valor in prolog.query("comida_equilibrada(X,Y,Z," + VD + ")"):
    # Imprimimos la información recabada
    conatador = conatador + 1
    print("  =========", conatador, "=========")
    print("Plato Fuerte: ", valor["X"])
    print("Bebida: ", valor["Y"])
    print("Postre: ", valor["Z"])
    print("")
    print("")
