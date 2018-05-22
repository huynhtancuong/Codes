program pyramid;
{}
var
	n, dong, sophantu : int64;
	i, stt, d : longint;
procedure pyramida();
begin
	write('n= ');
	readln(n);
	dong := 1;
	d := 1;
	sophantu:=1;
	stt:=0;
	while d < n do 
		begin
			for d:=1 to sqr(dong) do 
				if (d = n) then break;
			if (d < n) then 
				begin
					inc(dong);
					sophantu := sophantu + 2;
				end;
		end;
	if odd(dong) then 
		for i := sqr(dong) downto n do inc(stt)
	else 
		for i := (sqr(dong) - sophantu) to sqr(dong) do 
			begin
				if i = n then break;
				inc(stt);
			end;
	writeln('dong: ', dong);
	writeln('sophantu: ', sophantu);
	writeln('stt t->p: ', stt);
end;

procedure pyramidb();
var
	r, c : Integer;
begin
	write('r= ');
	readln(r);
	write('c= ');
	readln(c);
	sophantu:=1;
	if r <> 1 then for i := 2 to r do sophantu := sophantu + 2;
	if odd(r) then d := sqr(r) - c + 1
	 else d := sqr(r) - sophantu + c;
	writeln(d);
end;

begin
	pyramida();

end.			