%% dataRead.m

clc;
clear;
%This matlab code reads the given data file and provides row and column
%numbers


tableOfData=readcell("Olympic_data_set.csv");
% disp(tableOfData);


[nRow,nCol]=size(tableOfData);
disp("Number of columns: " + nCol);
disp("Number of rows: " + nRow);
% disp(tableOfData);











%% Ignore
% goldcount.country='';
% goldcount.numGold=0;
% 
% counter=0;
% indexer=1;
% 
% for irow=1:nRow
%     if string(tableOfData{irow,15})=="Gold" 
%         counter=counter+1;
%     end
% end
% disp("The number of gold won by countries is " + counter);


