clear all;
rng(1);
k=2;
data = load('hw5_circle.mat');
circle = data.points;
kernel = rbf_kernel(0.1, circle);
%kernel = poly_kernel(-5, 1, circle);
%clusters = kernelkmeans(kernel);
clusters = kkkmeans(kernel);
scatter(circle(:,1), circle(:,2), [], clusters, 'filled');
title(sprintf('Kernel k-means| RBF sigma=0.1 | Circle dataset | K=%d', k));
xlabel('x1');
ylabel('x2');
print(sprintf('kcircle-%d',k), '-dpng');
