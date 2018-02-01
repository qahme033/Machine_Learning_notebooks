function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

	% Cs = (1:3)/10;
	% sigmas = (3:5);
	% errors = [];
	% for i = 1:length(Cs)
	% 	for j = 1:length(sigmas)
	% 		C = Cs(i);
	% 		sigma = sigmas(j);
	% 		model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
	% 		predictions = svmPredict(model, Xval);
	% 		errors = [errors mean(double(predictions ~= yval))];
	% 	end
	% end

	% [val, index] = min(errors);
	% C = Cs(floor(index/3)+1)
	% sigma = mod (index, 3)
	C = 1
	sigma = 0.1
%saved errors to errors.mat
% errors2d= [errors(1:10);errors(11:20); errors(21:30);errors(31:40); errors(41:50);errors(51:60);errors(61:70);errors(71:80);errors(81:90);errors(91:100)]
% mesh (tx, ty, tz);
% xlabel ("C");
% ylabel ("sigma");
% zlabel ("error");
% title ("3-D Sombrero plot");

% min is at 11th
% so 
% c = Cs(2) -> 1
% sigma = sigmas(1) - > 0.1

% =========================================================================

end
