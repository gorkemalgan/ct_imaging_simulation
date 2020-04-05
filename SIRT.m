function [results] = SIRT(resultsForward, params, handles)
%SIRT Summary of this function goes here
%   Detailed explanation goes here

% Initiate the progressbar
bar = waitbar(0,'Processing SIRT Projection...');
% Initiate the SART backward projection matrix
results.Projections = zeros(params.ImageSize, params.ImageSize);
% Initiate the image pixels array
f = zeros(params.PixelNum, 1);
% Find the nonzero rays
indexes = find(resultsForward.NiArt);
% Do calculations only on nonzero elements, so update the vectors
projection = resultsForward.wArt(indexes, :);
p = resultsForward.p(indexes);
Li = resultsForward.Li(indexes);
Ni = resultsForward.NiArt(indexes);
% pi/Li
var1 = p./Li;

% Loop for each iteration
for t = 1:params.NumIteration    
    % qi/Ni
    var2 = projection * f ./ Ni;
    % Equation 18 from chapter7 of the textbook, p284: pi/Li - qi/Ni
    correction = repmat(var1 - var2, 1, params.PixelNum);
    df = sum(correction .* projection); 
    % Equation 13 from chapter7 of the textbook, p283
    f = f + (df ./ sum(resultsForward.wArt))';
    
    % Plot the current projection on GUI if it is activated
    if params.LiveRefresh
        % Convert f to matrix form
        results.Projections = vec2mat(flipud(f), params.ImageSize);
        % Normalize the pixel magnitudes
        imshow(results.Projections/max(max(results.Projections)), 'Parent', handles.axesBackward);
        % Set the colorbar on
        colorbar(handles.axesBackward);
    end
    % Update the progress bar for each iteration
    waitbar(t/params.NumIteration)
end;

% Convert f to matrix form
results.Projections = vec2mat(flipud(f), params.ImageSize);
% Normalize the results between 0 and 1
results.Projections = results.Projections/max(max(results.Projections));
% Calculate the similarity index
results.ssimIndex = ssim(results.Projections, params.Image);
% Close the progress bar
close(bar); 

end

