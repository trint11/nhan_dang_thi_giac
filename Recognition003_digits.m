function Recognition003_digits()
fprintf('\n Load du lieu train');
imgTrainAll = loadMNISTImages( './train-images.idx3-ubyte');
lblTrainAll = loadMNISTLabels('./train-labels.idx1-ubyte');
fprintf('\n Load du lieu test');
imgTestAll = loadMNISTImages('./t10k-images.idx3-ubyte');
lblTestAll = loadMNISTLabels('./t10k-labels.idx1-ubyte');
nTrainImages = size (imgTrainAll,2);
figure;
img = imgTrainAll(:,1);
img2D = reshape (img,28,28); %reshape
strLabelImage = num2str (lblTrainAll(1));
imshow(img2D); %show image
title(strLabelImage);
imgLast = imgTrainAll(:,nTrainImages);
img2DLast = reshape(imgLast,28,28);
strLabelImage = num2str(lblTrainAll(nTrainImages));
imshow(img2DLast);
title(strLabelImage);
end

