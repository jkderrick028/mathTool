function decomposeFunc

close all;
% generate a 2x2 matrix
matrix = randn(2, 2);
disp('matrix: '); disp(matrix);

[U, S, V] = svd(matrix);

vec1 = [1;0]; vec2 = [0; 1];
[length1, length2, angle] = vecLenAngle(vec1, vec2);
disp('vec1: '); disp(vec1);
disp('vec2: '); disp(vec2);
fprintf('length1: %f\nlength2:%f\nangle:%f\n', length1, length2, angle);
plotVec2([vec1, vec2]);
title('[vec1, vec2]');

disp('V: '); disp(V);
disp('V.T*vec1: '); disp(V'*vec1);
disp('V.T*vec2: '); disp(V'*vec2);
[length1, length2, angle] = vecLenAngle(V'*vec1, V'*vec2);
fprintf('length of V.T*vec1: %f\n', length1);
fprintf('length of V.T*vec2: %f\n', length2);
fprintf('angle between V.T*vec1 and V.T*vec2: %f\n', angle);
plotVec2(V'*[vec1, vec2]);
title('V.T*[vec1, vec2]');
axis square;
xlim([-1, 1]);
ylim([-1, 1]);


disp('S: '); disp(S);
disp('S*V.T*vec1: '); disp(S*V'*vec1);
disp('S*V.T*vec2: '); disp(S*V'*vec2);
[length1, length2, angle] = vecLenAngle(S*V'*vec1, S*V'*vec2);
fprintf('length of S*V.T*vec1: %f\n', length1);
fprintf('length of S*V.T*vec2: %f\n', length2);
fprintf('angle between S*V.T*vec1 and S*V.T*vec2: %f\n', angle);
plotVec2(S*V'*[vec1, vec2]);
title('S*V.T*[vec1, vec2]');
axis square;
xlim([-1, 1]);
ylim([-1, 1]);

disp('U: '); disp(U);
disp('U*S*V.T*vec1: '); disp(U*S*V'*vec1);
disp('U*S*V.T*vec2: '); disp(U*S*V'*vec2);
[length1, length2, angle] = vecLenAngle(U*S*V'*vec1, U*S*V'*vec2);
fprintf('length of U*S*V.T*vec1: %f\n', length1);
fprintf('length of U*S*V.T*vec2: %f\n', length2);
fprintf('angle between U*S*V.T*vec1 and U*S*V.T*vec2: %f\n', angle);
plotVec2(U*S*V'*[vec1, vec2]);
title('U*S*V.T*[vec1, vec2]');
axis square;
xlim([-1, 1]);
ylim([-1, 1]);
