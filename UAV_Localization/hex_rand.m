function [xra,yra]= hex_rand(R,i)
% R is the hexagon side length
% i is the number of samples
t= linspace(0,2*pi,7);
x= 0+R*cos(t);
y= 0+R*sin(t);
plot(x,y);
hold on
grid on;
for m = 1:i
xa= x(1)*2*(rand()-1/2);
ya= y(2)*2*(rand()-1/2);
     if ((xa>(R/2)) && (ya>(-sqrt(3)*xa+(R*sqrt(3))))) %%the areas where the problem occur
        ya=-sqrt(3)*xa+(R*sqrt(3));
     elseif ((xa>(R/2)) && (ya<(sqrt(3)*xa-(R*sqrt(3)))))
        ya=sqrt(3)*xa-(R*sqrt(3));
     elseif ((xa<(-R/2)) && (ya>(sqrt(3)*xa+(R*sqrt(3)))))
        ya=sqrt(3)*xa+(R*sqrt(3));
     elseif ((xa<(-R/2)) && (ya<(-sqrt(3)*xa-(R*sqrt(3)))))
        ya=-sqrt(3)*xa-(R*sqrt(3));
     end
     xra(m)=xa;  
     yra(m)=ya;  
    figure(1)   
 end  
 plot(xra,yra,'*');  
   hold on
end