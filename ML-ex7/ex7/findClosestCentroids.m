function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
% Kth row of centroids is the centroid for the Kth class

m = size(X,1);
costs = zeros(size(centroids,1),1);  % for temporarily storing costs for each example wrt. given K centroids


for i = 1:m
	x = X(i,:);
	for j = 1:K
		costs(j) = sum((x - centroids(j,:)).^2, 2);  % cost for an example wrt jth centroid
	end
	[minCost idx(i)] = min(costs); % Assigning the idx(i), index of the centroid with minimum cost 
	
end








% =============================================================

end

