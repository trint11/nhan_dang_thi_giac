function Q1(nNumber)
    imgTrainAll = loadMNISTImages ('train-images.idx3-ubyte');
    lblTrainAll = loadMNISTLabels ('train-labels.idx1-ubyte');
    figure;
    img = imgTrainAll(:, nNumber);
    img2D = reshape (img, 28, 28);
    strLabelImage = num2str(lblTrainAll(nNumber));
    strLabelImage = [strLabelImage, '(',num2str(nNumber),')'];
    imshow(img2D);
    title(strLabelImage);  
end
