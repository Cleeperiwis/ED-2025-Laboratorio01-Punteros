{ 
    Programa que demuestra el uso de punteros en Pascal 
}

program PunterosEj1;

uses
    ctr;

var
    { Declara variable entera (x) }
    x : integer;
    { Declara una variable de tipo puntero a entero (p_ent) }
    p_ent : ^integer
begin

    { Da el valor 100 a x }
    x := 100;
    { Crea un entero dinámicamente con p_ent y dale el valor que tiene actualmente x }
    new(p_ent);
    p_ent^ := x;
    { Imprime por pantalla el valor contenido en el entero al que apunta p_ent }
    writeln(p_ent^);
    { Crea con new un nuevo entero dinámicamente }
    new(p_ent);
    { Imprime por pantalla el valor contenido en el entero al que apunta p_ent }
    writeln('Valor de p_ent^ después del entero', p_ent^);
    { Pon el puntero p_ent a apuntar a x }
    p_ent := @x;
    { Súmale 100 al entero apuntado por el puntero p_ent }
    p_ent^ := p_ent^ + 100;
    { Imprime por pantalla el valor de x y también del entero al que apunta p_ent }
    writeln('El valor de x es:', x);
    writeln('El valor de lo que apunta p_ent es:, p_ent^);
    { Pon el puntero p_ent a NIL }
    p_ent:= nil;
    { Libera la memoria asociada al nuevo entero }
    dispose(p_ent);
    { Suma 100 a x pero sin usar x en la operación de suma (solo usando p_ent) }
    p_ent := @x;
    p_ent^ := p_ent^ + 100;
    { Muestra por pantalla que son iguales }
    writeln(X);
    writeln(p_ent^);
    { Libera toda la memoria asociada a p_ent y termina }
    dispose(p_ent);
    end.
