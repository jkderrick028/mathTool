function plotMatrixP

close all;
t = 0:64;
theta = 2*pi*t./64;
u = [cos(theta); sin(theta)];
figure();
hold on;
axis square
plot(squeeze(u(1,:)), squeeze(u(2,:)), 'b-');
scatter(u(1,1), u(2,1), 'r*');
xlim([-1, 1]);
ylim([-1, 1]);

matrix = randn(2, 2);
disp('matrix: '); disp(matrix);

[U, S, V] = svd(matrix);

disp('V: '); disp(V);
temp1 = V'*u;
figure();
hold on; 
plot(squeeze(temp1(1,:)), squeeze(temp1(2,:)), 'b-');
scatter(temp1(1,1), temp1(2,1), 'r*');
axis square;
xlim([-1, 1]);
ylim([-1, 1]);

disp('S: '); disp(S);
temp2 = S*temp1;
figure();
hold on; 
plot(squeeze(temp2(1,:)), squeeze(temp2(2,:)), 'b-');
scatter(temp2(1,1), temp2(2,1), 'r*');
axis square;
xlim([-1, 1]);
ylim([-1, 1]);

disp('U: '); disp(U);
temp3 = U*temp2;
figure();
hold on; 
plot(squeeze(temp3(1,:)), squeeze(temp3(2,:)), 'b-');
scatter(temp3(1,1), temp3(2,1), 'r*');
axis square;
xlim([-1, 1]);
ylim([-1, 1]);