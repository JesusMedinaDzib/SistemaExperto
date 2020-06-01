% PROLOG
% Declaramos los platillos con el nombre y las calorias

plato_fuerte(ceviche,109).
plato_fuerte(caldo_de_verdura,89).
plato_fuerte(caldo_de_pollo,110).
plato_fuerte(milanesa_de_pollo,89).
plato_fuerte(milanesa_de_puerco,122).
plato_fuerte(milanesa_de_pescado,102).
plato_fuerte(ensalada_cesar,89).
plato_fuerte(pizza_dietetica,157).
plato_fuerte(ensalada_fresca,102).
plato_fuerte(salsa_de_tomate,99).
plato_fuerte(salsa_de_champinion,88).
plato_fuerte(salsa_de_ajo,123).
plato_fuerte(arrollado_de_espinacas,90).
plato_fuerte(fajitas_de_pollo,110).

bebida(cafe,16).
bebida(agua,5).
bebida(jugo_de_naranja,14).
bebida(jugo_de_limon,14).
bebida(jugo_de_tamarindo,11).
bebida(jugo_de_chaya,12).
bebida(jugo_de_lima,14).

postre(pan_integral,30).
postre(pan_dietetico,45).
postre(coctel_de_frutas,20).
postre(coctel_de_papaya,35).
postre(gelatina_dietetica,27).
postre(pay_de_manzana,69).
postre(pay_de_mora,76).
postre(pay_de_coyol,55).

% Obtenemos el valor calorico de los platillos donde X es la informacion del plato fuerte, Y de las bebidas, Z de los postres, V una variable la cual tendra la suma de las calorias.
valor_calorico(X,Y,Z,V):- plato_fuerte(X,VP),bebida(Y,VB),postre(Z,VPO), V is VP+VB+VPO.

% Tomados todas las combinaciones de los platillos posibles donde la suma de las calorias sean menor igual al las calorias que agrego el usuario.
% VD es el numero de calorias que ingreso el usuario.
comida_equilibrada(X,Y,Z,VD):- valor_calorico(X,Y,Z,V), V=<VD.