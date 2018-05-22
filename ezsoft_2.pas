program ezsoft;
{}
var 
	n, k : longint;
	i : longint;
	a : array of longint;

begin
	readln(n);
	setlength(a, n + 1);
	for i:=1 to n do readln(a[i]);
	k := n;
	for i := n downto 1 do if k = a[i] then dec(k);
	write(k);
	readln;
end.
