function plotVec2(matrix)

% check matrix height=2
if size(matrix, 1) ~=2
    warning('matrix height is not 2!');
    return;
end
% close all;
figure();
hold on;
axis square;
for colI=1:size(matrix, 2)
    plotMat = zeros(2);
    for rowI=1:size(matrix, 1)
        plotMat(rowI, 2) = matrix(rowI, colI);
    end % rowI
    plot(squeeze(plotMat(1,:)), squeeze(plotMat(2,:)),'o-');
end % colI
xlim([-1, 1]);
ylim([-1, 1]);
xlabel('dim 1');
ylabel('dim 2');
