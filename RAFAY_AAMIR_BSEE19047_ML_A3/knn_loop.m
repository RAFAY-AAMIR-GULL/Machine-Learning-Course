function test_data = knn_loop(test_data, tr_data,k)

numoftestdata = size(test_data,1);
numoftrainingdata = size(tr_data,1);

    for sample=1:numoftestdata

       %Step 1: Computing euclidean distance for each testdata
       R = repmat(test_data(sample,:),numoftrainingdata,1);
       euclideandistance  = (R(:,1) - tr_data(:,1)).^2;

       %Step 2: compute k nearest neighbors and store them in an array
        [dist, position] = sort(euclideandistance,'ascend');
        knearestneighbors=position(1:k);
        knearestdistances=dist(1:k);


        % Step 3 : Voting 
        for i=1:k
            A(i) = tr_data(knearestneighbors(i),2);  
        end

        M = mode(A);

        if (M~=1)
            test_data(sample,2) = mode(A);
        else 
            test_data(sample,2) = tr_data(knearestneighbors(1),2);
        end
    end
end
