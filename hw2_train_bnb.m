function params = hw2_train_bnb(X,Y)
[rows, columns] = size(X);
params = struct([]);
prior = zeros(length(unique(Y)),columns , 'double');
minimum = min(Y);
maximum = max(Y);
len = maximum + abs(minimum);
mean = zeros(len, columns, 'double');
params(1).class = unique(Y);
params(1).length = len;
for i = 1: length(Y)
    if sign(Y(i)) < 0
        prior(abs(Y(i))) = prior(abs(Y(i)))+1;
    else
        prior(len) = prior(abs(minimum) + Y(i)) + 1;
    end
end
for i = 1: rows %X is data Y is labels
    if sign(Y(i)) < 0
        mean(abs(Y(i)), :) = double(mean(abs(Y(i)),:) + X(i,:));
    else
        mean(abs(minimum) + Y(i), :)  = mean(abs(minimum) + Y(i), :) + X(i,:);
    end
end

for i = 1: len
    for j = 1:columns
        mean(i,j) = (double(mean(i,j))+ 1.0)/((prior(i))+2.0);
    end
end
for i = 1:len
    prior(i) = prior(i)/length(Y);
end

for i = 1:(max(Y) + abs(min(Y)))
    params(i).prior = prior(i);
    params(i).mean = mean(i,:);
end


end