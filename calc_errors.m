function error = calc_errors( preds, testlabels )
    error = 0;
        for i = 1:length(testlabels)
            if (preds(i) ~= testlabels(i))
                error = error + 1;
            end
        end
error = error/(length(testlabels));
end
