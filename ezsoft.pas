var  a  :  array of longint;
     i,num,k  :  longint;
     z  :longint=0;
     tmp:longint;
     

procedure delnuminarray(var a:array of longint;num:longint);
begin
  tmp:=a[num];
  for i:=num downto 2 do
    begin
      a[i]:=a[i-1];
    end;
  a[1]:=tmp;
  z:=z+1;
end;

     
begin
  readln(num);
  setlength(a,num+1);
  k:=0;
  for i:=1 to num do 
    begin
      readln(a[i]);
      if (a[i]-1=a[i-1]) and (i>2) and (k=0) then k:=a[i]-1;
    end;
  while k>=1 do
    begin
      for i:=1 to num do 
        begin
          if k = a[i] then 
            begin
              delnuminarray(a,i);
              k:=k-1;
              break;
            end;
        end;
    end;
  write(z);
end.