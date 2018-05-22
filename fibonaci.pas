var
	n,i,j,m: Integer;
	fi:array of Boolean;
function f(n:integer): Integer;
begin
	if (n=1) or (n=2) then exit(1);
	
	exit((f(n-1)+f(n-2)));
end;

begin
	write('Enter a number: ');
	readln(n);
	m:=1;
	while f(m) <= n do inc(m);
	dec(m);
	setlength(fi,m+1);
	for i:=1 to m do fi[i]:=false;
	fi[m]:=true;
	for i:=1 to m do writeln(f(i));
	for i:=1 to m do writeln(fi[i]);
	readln;
end.
