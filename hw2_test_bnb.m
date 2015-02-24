function preds = hw2_test_bnb(params, test)
preds = [];
[row, column] = size(params) %1x20
[rowt, columnt] = size(test); %7505 * 61188
fun = @(M,T) log((M.^T))+log((1-M).^(1-T));
classes = params(1).class;
for j = 1:rowt
        max = -Inf;
        class = 0;
    for i = 1:column %iterating through k classes
        mean = params(i).mean;    
        prior = params(i).prior;
        conditional = bsxfun(fun,mean,test(j,:));
        conditional = sum(conditional);
        if log(prior)+conditional > max
            class = classes(i);
            max = log(prior)+conditional;
        end
    end
    preds = [preds;class];
end


end




