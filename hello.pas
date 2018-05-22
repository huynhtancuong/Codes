program hello;
{}
var sth:string;
	max,i:integer;
begin
	readln(sth);
	max:=length(sth);
	i:=1;
	while sth[1] <> 'h' do 
		begin
			delete(sth,1,1);
			if i>max then break;
			inc(i);
		end;
	i:=1;
	while sth[2] <> 'e' do 
		begin
			delete(sth,2,1);
			if i>max then break;
			inc(i);
		end;
	i:=1;
	while sth[3] <> 'l' do 
		begin
			delete(sth,3,1);
			if i>max then break;
			inc(i);
		end;
	i:=1;
	while sth[4] <> 'l' do 
		begin
			delete(sth,4,1);
			if i>max then break;
			inc(i);
		end;
	i:=1;
	while sth[5] <> 'o' do 
		begin
			delete(sth,5,1);
			if i>max then break;
			inc(i);
		end;
	i:=1;
	while sth[6] <> '' do 
		begin
			delete(sth,6,1);
			if i>max then break;
			inc(i);
		end;
	if sth = 'hello' then writeln('YES') else writeln('NO');
end.
