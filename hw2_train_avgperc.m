function params = hw2_train_avgperc(X, Y, num_passes)
[rows, columns] = size(X);
weights = zeros(1, columns, 'double');
u = zeros(1,columns,'double');
c = 1.0;
bias = 0.0;
beta = 0.0;
params = ([]);
for i = 1:num_passes
    for j = 1:rows
        if (dot(X(j,:),weights(1,:)) + bias)*Y(j) <= 0
            weights(1,:) = weights(1,:) + X(j,:).*Y(j);
            bias = bias + Y(j);
            u(1,:) = u(1,:) + (Y(j)*c).*X(j,:);
            beta = beta + Y(j)*c;
        end
        c = c + 1;
    end
end
weights = weights-(u(1,:)*(1.0/c));
bias = bias - (1.0/c)*beta;
params(1).bias = bias;
params(1).weights = weights;
end

