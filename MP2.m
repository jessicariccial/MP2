x1 = input('Enter first point in the x-axis: ');
x2 = input('Enter second point in the x-axis: ');
x3 = input('Enter third point in the x-axis: ');
y1 = input('Enter first point in the y-axis: ');
y2 = input('Enter second point in the y-axis: ');
y3 = input('Enter third point in the y-axis: ');

a = [x1, y1, 1; x2, y2, 1; x3, y3, 1];
A = det(a);

b = [((x1)^2+(y1)^2), y1, 1; ((x2)^2+(y2)^2), y2, 1; ((x3)^2+(y3)^2), y3, 1];
D = -det(b);

c = [((x1)^2+(y1)^2), x1, 1; ((x2)^2+(y2)^2), x2, 1; ((x3)^2+(y3)^2), x3, 1];
E = det(c);

d = [((x1)^2+(y1)^2), x1, y1; ((x2)^2+(y2)^2), x2, y2; ((x3)^2+(y3)^2), x3, y3];
F = -det(d);

h = (D/(2*A));
k = (E/(2*A));
r = sqrt(((D^2)+(E^2)-(4*A*F))/(4*(A^2)));

D1 = D/A;
E1 = E/A;
F1 = F/A;

fprintf('center(%.2f, %.2f)', h, k);
fprintf('\nradius %.2f', r);
fprintf('\nvector[%.2f, %.2f, %.2f]', D1, E1, F1);