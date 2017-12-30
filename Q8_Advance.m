function Q8_Advance(k)
    imgTrainAll = loadMNISTImages('./train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
    
    Mdl = fitcknn(imgTrainAll' , lblTrainAll, 'NumNeighbors', k);
    
    imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
    
    lblResult = predict(Mdl,imgTestAll');
	result = (lblResult == lblTestAll);
	nCount = sum(result);

    accuracy = nCount*100/size(imgTestAll, 2);
    fprintf('\nDo chinh xac cua thuat toan knn voi %d nearest neighbors la %d\n', k, accuracy);
end