function preds = hw2_test_perc(params,test)
    bias = params(1).bias;
    weights = params(1).weights;
    [rows, columns] = size(test);
    preds = []
    for i = 1:rows
        a = dot(test(i,:),weights(1,:)) + bias;
        preds = [preds; sign(a)];
    end
    
end

