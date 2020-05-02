%CREAMOS LOS ECHOS
mujer(ana).
mujer(maria).
mujer(luisa).
mujer(fabiola).
mujer(esther).
mujer(rocio).
mujer(diana).
mujer(vanessa).
mujer(martha).
mujer(romina).


hombre(hugo). adulto(hugo). % PARA ESPECIFICAR ALGO
hombre(paco).
hombre(luis).
hombre(mario).
hombre(marco).
hombre(juan). nino(juan).
hombre(pedro).
hombre(raul).
hombre(gabriel).
hombre(sergio).

%esposa(ana,hugo).
%esposa(rocio,mario).
%esposa(diana,sergio).

%esposo(luis,romina).
%esposo(marco,luisa).

%hijo(paco,esther).
%hijo(paco,sergio).
%hijo(juan,vanessa).
%hijo(juan,raul).
%hija(fabiola,maria).
%

madre(ana,rocio).
madre(ana,maria).
madre(ana,luis).
madre(martha,diana).
madre(fabiola,romina).
madre(romina,luisa).

padre(raul,rocio).
padre(marco,hugo).
padre(pedro,garbriel).
padre(marco,romina).
padre(sergio,paco).
padre(hugo,sergio).

%REGLAS
%padre(X,Y):-hombre(X),hijo(Y,X).
%madre(X,Y):-mujer(X),hijo(Y,X).


%padre(X,Y):-hombre(X),hijo(Y,X); hija(Y.X).
%madre(X,Y):-mujer(X),hijo(Y,X); hija(Y.X).
%IDENTIFICAR ABUELOS
abuelo(X):-padre(X,Y),padre(Y,Z).
%:-:-abuelo(X).
%true.
%X = marco 
%X = hugo.
%|

abuela(X):-madre(X,Y),madre(Y,Z).
%:-:-abuela(X).
%true.
%X = fabiola 

%REGLA PARA IDENTIFICAR A UNA PERSONA.
persona(X):-hombre(X);mujer(X).
%:-persona(X).
%true.
%X = hugo 
%X = paco |;
%X = luis |
%REGLA PARA IDENTIFICAR UN NIETO.
nieto(X):-padre(Y,X),padre(Z,Y).
%|:-nieto(X).
%true.
%X = paco 

%REGLA PARA IDENTIFICAR UN NIETA.
nieta(X):-madre(Y,X),madre(Z,Y).
%||nieta(X).
%true.
%X = luisa 

%REGLA PARA IDENTIFICAR A LOS HERMANOS.
hermano(A, B) :- ((padre(C, A), padre(C, B)); (madre(D, A), madre(D, B))), (hombre(B), hombre(A)).


%REGLA PARA IDENTIFICAR A LOS HERMANAS.
hermana(A, B) :- ((padre(C, A), padre(C, B)); (madre(D, A), madre(D, B))), (mujer(B), mujer(A)).

%A = B, B = rocio :-;
%A = B, B = romina |;
%A = B, B = rocio |;
%A = rocio,
%B = maria 

%REGLA PARA IDENTIFICAR A LAS PAREJAs
pareja(X,Y):-padre(X,Z),madre(Y,Z).
%:-:-pareja(X,Y).
%true.
%X = raul,
%Y = ana
%X = marco,
%Y = fabiola |;


