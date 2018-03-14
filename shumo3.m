 for ci=1:50
T=200,m=1000*rand,Z=1000*rand,x=0,y=0,num=0;
while(T>96)
U=[m,Z];
x=m+rand*14500;
y=Z+rand*11350;
X=[x,y];
for M=1:45
Q=[tulare(M,2),tulare(M,3)];
n=(10000000*tulare(M,1))*norm(U-Q)+n;
I=(10000000*tulare(M,1))*norm(X-Q)+I;
end
if I>n
m=0;
Z=0;
else
ra=rand;
if ra<exp((-I+n)/T)
T=0.97*T;
num=num+1;
G(num,1)=x;
G(num,2)=y;
m=x;
Z=y;
else
end
end
I=0;
n=0;
end
TXT(ci,1)=G(num,1);
TXT(ci,2)=G(num,2);
end