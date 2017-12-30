function Q7(n)
    fprintf('\n Load du lieu train');
    imgTrainAll = loadMNISTImages('train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('train-labels.idx1-ubyte');
  
    Mdl = fitcknn(imgTrainAll', lblTrainAll);
    
    fprintf('\n Load du lieu test');
    imgTestAll = loadMNISTImages('t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('t10k-labels.idx1-ubyte');
        
    numLabel = size(lblTestAll, 1);
    result = 0;

    for i=1:numLabel
        if(lblTestAll(i) == n)
            imgTest = imgTestAll(:, i);
            if(predict(Mdl, imgTest') ~= lblTestAll(i))
                result = result + 1;
            end
        end
    end
    fprintf('\nSo luong anh co label %d bi nhan dang sai la: %d\n', n, result);
end