%%
clear;close all; clc;
%% Forming and plotting the dataset
mu = [1.5,1.5]; sigma = [1,1.5;1.5,3];
sampleNo = 3000;
testNo = 10;
C1X = (mvnrnd(mu,sigma,sampleNo))';
mu = [4,1];sigma = [1,1.5;1.5,3];
C2X = (mvnrnd(mu,sigma,sampleNo))';
% mean computation
x = [C1X,C2X];
y1 = zeros(1,sampleNo);
y2 = ones(1,sampleNo);
y = [y1,y2];
test_x   = [C1X(:,1:testNo),C2X(:,1:testNo)];
train_x  = [C1X(:,testNo+1:sampleNo),C2X(:,testNo+1:sampleNo)];
test_y = [y1(:,1:testNo),y2(:,1:testNo)];
train_y  = [y1(:,testNo+1:sampleNo),y2(:,testNo+1:sampleNo)];

% dataset discription
% train_x: contains the train set
% test_x : contains the test set
% train_y: contains the labels of train set
% test_y : contains the labels of test set

% see the dataset 
plot(C1X(1,1:testNo),C1X(2,1:testNo),'+'); 
hold on; 
plot(C2X(1,1:testNo),C2X(2,1:testNo),'ko');
plot(C1X(1,testNo+1:sampleNo),C1X(2,testNo+1:sampleNo),'+'); 
hold on; 
grid on;  
plot(C2X(1,testNo+1:sampleNo),C2X(2,testNo+1:sampleNo),'o');



knn_loop(test_x,train_x,2);

