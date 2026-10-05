clear
clc
figure;
[x, y] = meshgrid(-1:0.5:1,-1:0.5:1);
r = sqrt(x.^2 + y.^2);
z = exp(r.^2);
C = x + y;
surface = surf(x,y,z,C)
colorbar
colormap("parula")
shading interp
rotate(surface,[1 1 0],10)
title("Paviršius")
xlabel("iksai")
ylabel("ygrikai")

clear
clc
figure;
[x, y, z] = meshgrid(linspace(-2,2,20),linspace(-2,2,20), linspace(-1,1,20))
f = sin(((x.^2+y.^2+z.^2)./20).*exp(-(x.^2+y.^2+z.^2)));
colormap("parula")
shading interp
obj = slice(x,y,z,f,0,0,0)
rotate(obj,[1 1 0],15)
title("Paviršius")
xlabel("iksai")
ylabel("ygrikai")

clear
clc
figure;
subplot(2,2,1)
[x, y] = meshgrid(-1:0.5:5,-1:0.5:5);
z = 1-(x^2+y^2);
surface = surf(x,y,z)
shading faceted
hold on;
subplot(2,2,2)
[x, y] = meshgrid(-1:0.5:5,-1:0.5:5);
z = 1-(x^2+y^2);
surface = surf(x,y,z)
shading interp
hold on;
subplot(2,2,3)
[x, y] = meshgrid(-1:0.5:5,-1:0.5:5);
z = 1-(x^2+y^2);
surface = surf(x,y,z)
shading interp
hold on;