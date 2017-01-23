program triangle;
uses crt;
CONST
        max = 11;
TYPE
        tableau2dc = array[1..max, 1..max] of char;
        tableau2di = array[1..max, 1..max] of integer;
procedure tab1 (var T1:tableau2dc);
VAR
        i,j:integer;
begin
        for i:=1 to max do
                begin
                for j:=1 to max do
                        begin
                        if i>=j then
                                T1[i,j]:='O';
                        if (i=j) or (i=max) or (j=1) then
                                T1[i,j]:='X';
                        write(T1[i,j]);
                        end;
        writeln;
        end;
end;

procedure tab2 (var T2:tableau2di);
VAR
        i,j,compteur:integer;
begin
        compteur:=0;
        for i:=max downto 1 do
                begin
                        for j:=1 to max do
                                begin
                                        if i>j then
                                                begin
                                                T2[i,j]:=compteur;
                                                write(T2[i,j]);
                                                end;
                                end;
                        compteur:=compteur+1;
                        writeln;
                end;
end;


VAR
        T2:array[1..max,1..max] of char;
        T4:array[1..max,1..max] of integer;
        i,j:integer;
BEGIN
        clrscr;
        tab1(T2);
        tab2(T4);
Readln;
END.