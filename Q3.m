function result = Q3(labels,filename)
    %Create matrix 10x2 with value = 0.
    result = zeros([10 2]);
    % add label 0->9
    i = 0;
    while (i < 10)
         result(i+1,1) = i;
         i = i + 1;
    end
    % count label
    i = 1;
    while (i <= size(labels, 1))
         label = labels(i);
         result(label+1,2) = result(label+1,2) + 1;
         i = i + 1;
    end
    % export to csv file
    csvwrite(filename,result);
end
