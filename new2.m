function [df]=new2(b,z,k);
global N
for i=1:N
df(i)=-(z(i)*(k(i)-1)^2)/(1+b*(k(i)-1))^2;
end
df=sum(df);
