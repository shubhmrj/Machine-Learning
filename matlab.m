% Program to input a dataset quickly and represent it using a 5x3 matrix

clc;    % Clear command window
clear;  % Clear workspace

% Define matrix size
rows = 5;
cols = 3;
num_elements = rows * cols;

% Prompt the user to input all data at once
fprintf('Please enter %d numbers separated by spaces:\n', num_elements);
inputData = input('', 's');   % Read the whole line as a string

% Convert the string to numeric array
dataArray = str2num(inputData);  %#ok<ST2NM>  % Safe for simple input

% Check if the correct number of elements was entered
if numel(dataArray) ~= num_elements
    error('Incorrect number of elements. Expected %d numbers.', num_elements);
end

% Reshape the array into a 5x3 matrix
dataMatrix = reshape(dataArray, [cols, rows])';  % Transpose after reshape to match row-wise filling

% Display the resulting matrix
disp('The 5x3 data matrix is:');
disp(dataMatrix);
