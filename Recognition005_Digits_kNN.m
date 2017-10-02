function Recognition005_Digits_kNN()
imgTrainAll = loadMNISImages ('./train-imges.idx3-ubyte');
lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
Mdl = fitcknn(imgTrainAll',lblTrainAll);
imgTestAll = loadMNISTImages('./t10k-images.idx-ubyte');
lblTestAll = loadMNISTLabels(' ./t10k-labels.idx1-ubyte');
nTestImgs = size(imgTestAll,2);
nNumber = randi ([1 nTestImgs]);
imgTest = imgTest(:,nNumber);
lblPredictTest = predict (Mdl,imgTest');
lblImageTest = lblTestAll(nNumber);
figure;
img2D = reshape(imgTest,28,28);
imshow (img2D);
strLabelImage = 'Ban dau ';
strLabelImage = [strLabelImage, num2str(lblTestLabelsAll(nNumber)),'.'];
strLabelImage = [strLabelImage,' Du doan:'];
strLabelImage = [strLabelImage, num2str(lblPredictTest,'.'];
    if (lblPredictTest ==lblImageTest)
    strLabelImage = [strLabelImage,' Ket qua dung.'];
    else
        strLabelImage = [strLabelImage, ' Ket qua sai.'];
 end

