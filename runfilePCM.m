%Setup File
clc
clear all;
close all;

% the 2 sources
sourceA = randn(10000,1);
temp = randn(10000,1);
a = [1 1/2 1/3 1/4 1/5 1/6];
sourceB = filter(1, a, temp);


[xq, centers, D] = lloydMaxQuantizer(sourceA, 4, -1, 1)

for i=1:length(xq)
    new_array(i) = centers(xq(i));
end
new_array = new_array';
plot(sourceA, 'DisplayName', 'sourceA');
hold on;
plot(new_array, 'DisplayName', 'new_array');
hold off;
%[idx, C] = kmeans(sourceA, 3)