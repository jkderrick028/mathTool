function gramSchmidt(N)

    if nargin<1, N=3; end
    
    orthonomalVecs = randn([N, 1]);
    orthonomalVecs = orthonomalVecs/norm(orthonomalVecs);
    while size(orthonomalVecs, 2) < N
        orthonomalVecs = [orthonomalVecs, orthonormalizeFun(orthonomalVecs)];
    end
    disp(orthonomalVecs);
    close all;
    figure();
    if N==3
        for i=1:N
            px = [0, orthonomalVecs(1, i)];
            py = [0, orthonomalVecs(2, i)];
            pz = [0, orthonomalVecs(3, i)];
            if i>1
               hold on 
            end
            plot3(px, py, pz, 'o-');
            axis square;
            rotate3d on;
            xlim([-1,1]);
            ylim([-1,1]);
            zlim([-1,1]);
        end
    end
    if N==2
        for i=1:N
            px = [0, orthonomalVecs(1, i)];
            py = [0, orthonomalVecs(2, i)];
            if i>1
               hold on 
            end
            plot(px, py, 'o-');
            axis square;
            xlim([-1,1]);
            ylim([-1,1]);
        end
    end
    [veclengths, dotProduct] = sanityCheck(orthonomalVecs);
    disp('veclengths: ');
    disp(veclengths);
    disp('dotProducts: ');
    disp(dotProduct);
end

function vec = orthonormalizeFun(A)
    vec = randn([size(A, 1), 1]);
    sum = 0;
    for vecI=1:size(A, 2)
        sum = sum + dot(A(:, vecI), vec)*A(:, vecI);
    end % vecI
    vec = vec - sum;
    vec = vec/norm(vec);
end

function [veclengths, dotProduct] = sanityCheck(A)
    veclengths = zeros([size(A, 2), 1]);
    dotProduct = zeros(size(A));
    for vecI=1:size(A, 2)
        veclengths(vecI) = norm(squeeze(A(:, vecI)));
        for vecJ=1:size(A, 2)
            dotProduct(vecI, vecJ) = dot(A(:, vecI), A(:, vecJ));
        end % vecJ
    end % vecI
end