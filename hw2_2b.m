function preds = hw2_2b(X,Y,testdata, N, num_passes)

A = [500, 1000, 1500, N];
preds = struct([]);
index = 1;
for k = A
    sample = datasample([X Y], k, 1);
    [row, col] = size(sample);
    data = sample(:, 1:col-1);
    label = sample(:, col);
    params = hw2_train_bnb(data,label);
    preds(index).bnb = hw2_test_bnb(params, testdata);
    preds(index).bnb_error = calc_errors(preds(index).bnb, testlabels);
    params = hw2_train_perc(data, label, num_passes);
    preds(index).perc = hw2_test_perc(params, testdata);
    preds(index).perc_error = calc_errors(preds(index).perc, testlabels);
    params = hw2_train_avgperc(data, label, num_passes);
    preds(index).avgperc = hw2_test_perc(params, testdata);
    preds(index).avgperc_error = calc_errors(preds(index).avgperc, testlabels);
    index = index + 1;
end
end

