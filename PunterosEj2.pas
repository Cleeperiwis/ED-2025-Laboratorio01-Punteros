program PunterosEj2;

uses
    SysUtils;

var
V = array[0..2] of integer;
indice: integer;
p = ^integer:
begin
    { Crea un array de 3 enteros V e inicialízalo con números aleatorios. }
    randomize;
        for indice := 0 to 2 do
            V[indice] := random(100)

    { Muestra sus valores por pantalla }
    writeln('Valores iniciales del array');
    for indice := 0 to 2 do 
        writeln(V[indice]);

    { Declara un puntero a entero p y ponlo a apuntar a la primera posición del array }
    p := @V[0];

    { Pon el valor 100 en el entero apuntado por p }
    p^ := 100;

    { Muestra los valores del array “V” por pantalla }
    writeln('Valores finales del array');
    for indice := 0 to 2 do 
        writeln(V[indice]);

    { Recorre con p todas las posiciones del array para ponerlas todas a cero }
    for indice := 0 to 2 do 
       p^ := 0;
       Inc(p);
    end;

    { Muestra los valores del array “V” por pantalla }
        writeln('Valores a cero del array');
    for indice := 0 to 2 do 
        writeln(V[indice]);
end.
