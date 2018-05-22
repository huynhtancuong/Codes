program xauduynhat;
{}
var s,st:string;
	n,m,k,los,i,j,z,max:integer;
	finish:Boolean = false;
	boo:boolean;
	check:char;
//abcdEd :5
begin
	s:='bahhkeu';
	los:=length(s);
	m:=1;
	n:=1;
	k:=0;
	max:=0;
	s:=s+' ';
	while finish = false do 
		begin
			st:='';
			for i:=m to n do st:=st+s[i];
			for z:=m to n do writeln(st);
			
			if (n = los) and ((m=los-1) or (m=n)) then finish:=true;	
			if (n = los) then 
				begin
					inc(m);
					n:=m+1;
				end;
			if (n < los) then inc(n);
		end;
	writeln(max);
end.
