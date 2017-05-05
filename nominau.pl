contrato('tco','titular',200000).
contrato('tco','asistente',120000).
contrato('tco','auxiliar',90000).
contrato('mto','titular',135000).
contrato('mto','asistente',55000).
contrato('mto','auxiliar',25000).
contrato('hc','titular',100000).
contrato('hc','asistente',80000).
contrato('hc','auxiliar',60000).
multiplicar(S,H,P,R):-
    R is (((S*H)+((S*H)*(P/100)))*4)*4.5.
año(Z,Y):-
    Y is Z*12.

tipocontrato('mto').
tipocontrato('hc').
tipocontrato('tco').

cargo('titular').
cargo('asitente').
cargo('auxiliar').

sacarvalor(X,Y,A,Z):-
    X =='tco',Y=='titular', multiplicar(200000,A,25,Z);
    X =='tco',Y=='asistente',multiplicar(120000,A,25,Z);
    X =='tco',Y=='auxiliar',multiplicar(90000,A,25,Z);
    X =='mto',Y=='titular',multiplicar(135000,A,10,Z);
    X =='mto',Y=='asistente',multiplicar(80000,A,10,Z);
    X =='mto',Y=='auxiliar',multiplicar(60000,A,10,Z);
    X =='hc',Y=='titular',multiplicar(70000,A,0,Z);
    X =='hc',Y=='asistente',multiplicar(55000,A,0,Z);
    X =='hc',Y=='auxiliar',multiplicar(25000,A,0,Z).







