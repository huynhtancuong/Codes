program solon;
var 
	chuoi : string = '2ki893mv8923jf'; // 28938923
	m : integer = 5;
	i : integer;
	max : char;
	after : string;
begin
	i := 1;
	while i <= length(chuoi) do 
		begin
			if (ord(chuoi[i]) < 48) or (ord(chuoi[i]) > 57) then delete(chuoi, i, 1)
				else inc(i);
		end;

		
	max := chuoi[length(chuoi) - m + 1];
	after := after + max;
	

 	writeln(chuoi);
 	writeln(max);
 	writeln(after);
end.
		