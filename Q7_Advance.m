function Q7_Advance()
    imgTrainAll = loadMNISTImages('../lecture02/data/train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('../lecture02/data/train-labels.idx1-ubyte');
    
    Mdl = fitcknn(imgTrainAll', lblTrainAll);
    
    imgTestAll = loadMNISTImages('../lecture02/data/t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('../lecture02/data/t10k-labels.idx1-ubyte');
    
    matrix = zeros(10, 10);
    lblImage = unique(lblTestAll);
    
    for val = 1:numel(lblImage)
        n = lblImage(val);
        fprintf('Anh so %d\n', n);
        indices = find(lblTestAll==n);
        for idx = 1:numel(indices)
            nNumber = indices(idx);
            imgTest = imgTestAll(:, nNumber);
            lblPredictTest = predict(Mdl, imgTest');
            matrix(n+1,lblPredictTest+1) = matrix(n+1,lblPredictTest+1) + 1;
        end
    end
    csvwrite('Confusion_matrix.csv', matrix);
end