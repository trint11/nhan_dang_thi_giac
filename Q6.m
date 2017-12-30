function Q6(n)
    imgTrainAll = loadMNISTImages('train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels('train-labels.idx1-ubyte');
    Mdl = fitcknn(imgTrainAll' , lblTrainAll);
    
    imgTestAll = loadMNISTImages('t10k-images.idx3-ubyte');
    lblTestAll = loadMNISTLabels('t10k-labels.idx1-ubyte');
    imgTest = imgTestAll(:, n);
    lblPredictTest = predict(Mdl, imgTest');
    lblImageTest = lblTestAll(n);
    
    figure;
    img2D = reshape(imgTest, 28, 28);
    imshow(img2D);
    strLabelImage = 'Anh Test:';
    strLabelImage = [strLabelImage, num2str(lblImageTest), '.'];
    strLabelImage = [strLabelImage, 'Du doan:'];
    strLabelImage = [strLabelImage, num2str(lblPredictTest), '.'];
    if(lblPredictTest == lblImageTest)
        strLabelImage = [strLabelImage, 'Anh duoc Nhan dang dung'];
    else
        strLabelImage = [strLabelImage, 'Anh bi nhan dang sai.'];
    end
    title(strLabelImage);
end