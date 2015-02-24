function params = hw2_train_perc(X,Y, num_passes)
params = ([]);
[rows, columns] = size(X)
weights = zeros(1, columns, 'double');
bias = 0.0;
for i = 1:num_passes
    for j = 1:rows
        if (dot(X(j,:),weights(1,:)) + bias)*Y(j) <= 0
            weights(1,:) = weights(1,:) + X(j,:).*Y(j);
            bias = bias + Y(j);
        end
    end
end
params(1).weights = weights;
params(1).bias = bias;
