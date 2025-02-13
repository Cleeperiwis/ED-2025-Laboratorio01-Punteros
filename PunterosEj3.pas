program PunterosEj3;
type
    { Declara un tipo de registro llamado “nodo” con dos campos: un entero y un puntero a “nodo” }
    Pnodo = ^nodo;
    nodo = record
        dato: Integer;
        siguiente: Pnodo;
    end;
        

var
    { Declara una variable de tipo puntero a nodo }
    PrimNodo : Pnodo;
begin
    { Crea un nodo en memoria dinámica (heap) }
    new(PrimNodo);

    { Dale valor 100 al campo entero de este nodo }
    PrimNodo^.dato := 100;

    { Pon a nil el campo puntero del nodo }
    PrimNodo^.siguiente := nil;

    { Pon ahora el puntero del nodo a apuntar al propio nodo }
    PrimNodo^.siguiente := PrimNodo;

    { En este punto hay dos instrucciones alternativas para liberar la memoria dinámica creada: }
    { Alternativa 1: Liberar el nodo directamente }
    writeln(PrimNodo^.dato);

    { Alternativa 2: Liberar el nodo a través del campo puntero }
    { Dispose(punteroNodo^.siguiente); }
    Dispose(PrimNodo^.siguiente);
    { Termina }
end.
