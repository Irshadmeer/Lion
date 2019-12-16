

function Points = randomPoints(x1,y1,z1,rc)
a=2*pi*rand;
r=sqrt(rand);
Points = zeros(1,3);
x=(rc*r)*cos(a)+x1;
y=(rc*r)*sin(a)+y1;
z= (500)*(rand)+z1;

Points= [x,y,z]; 

end
