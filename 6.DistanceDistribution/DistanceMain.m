
x1=0;
y1=0;
z1 =0;
radius= 1500;
A = zeros(1,3);
B = zeros(10000,3);

for t= 1:10000 %loop until doing 10000 points inside the circle
A = cirrdnPJ(x1,y1,z1,radius);

B(t,:) = A;% storing points in the matrix

end

% Euclidean distance to point [0,0,0]:
D = sqrt(sum((B - [0,0,0]).^2, 2));
histogram(D)
grid on
mean(D)
% sqrt(sum((B - C) .^ 2))
