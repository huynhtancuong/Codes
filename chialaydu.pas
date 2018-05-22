program chialaydu;
{}
var
	f,o 			: text;
	i,n,k,t,sodu,z,j:Integer;
	a,b,c 			:array of Integer;
begin
	assign(f,'chialaydu.inp');
	assign(o,'chialaydu.out');
	reset(f);
	rewrite(o);
	read(f,n,k);
	setlength(a,n+1);
	setlength(b,n+1);
	setlength(c,n+1);
	z:=0;
	for i:=1 to n do read(f,a[i]);
	for i:=1 to n do 
		begin
			sodu:=a[i] mod k;
			b[i]:=sodu;
		end;
	for i:=1 to n do write(b[i]:4);
	writeln;
	for i:=1 to n do
		begin
			t:=0;
			sodu:=a[i] mod k;
			for j:=1 to n do
				if sodu = b[j] then inc(t);
			c[i]:=t;
		end;
	for i:=1 to n do writeln(c[i]);
	//writeln(z);
	readln;
	close(o);
end.
