function [ resultsART ] = ART(resultsForward, params, handles)
%ART Summary of this function goes here
%   Detailed explanation goes here

% Initiate the progressbar
bar = waitbar(0,'Processing ART Projection...');
% Initiate the SART backward projection matrix
resultsART.Projections = zeros(params.ImageSize, params.ImageSize);
% Initiate the image pixels array
f = zeros(params.PixelNum, 1);
% Find the nonzero rays
indexes = find(resultsForward.NiArt);
% Do calculations only on nonzero elements, so update the vectors
projection = resultsForward.wArt(indexes, :);
p = resultsForward.p(indexes);
Ni = resultsForward.NiArt(indexes);
% pi/Ni
var1 = p./Ni;

for t = 1:params.NumIteration    
    % Iterate over each ray and perform update
    for i = 1:length(indexes)
        correction = var1(i) - (projection(i,:) * f)/Ni(i);
        df = correction * projection(i,:)';
        % Decrease alpha at each iteration
        dfSmooth = df * params.Alpha/t;
        f = f + dfSmooth;
    end
    
    % Plot the current projection on GUI if it is activated
    if params.LiveRefresh
        % Convert f to matrix form
        resultsART.Projections = vec2mat(flipud(f), params.ImageSize);
        % Normalize the pixel magnitudes
        imshow(resultsART.Projections/max(max(resultsART.Projections)), 'Parent', handles.axesBackward);
        % Set the colorbar on
        colorbar(handles.axesBackward);
    end;
    
% Update the progress bar for each iteration
waitbar(t/params.NumIteration);
end;

% Convert f to matrix form
resultsART.Projections = vec2mat(flipud(f), params.ImageSize);
% Normalize the results between 0 and 1
resultsART.Projections = resultsART.Projections/max(max(resultsART.Projections));
% Calculate the similarity index
resultsART.ssimIndex = ssim(resultsART.Projections, params.Image);
% Close the progress bar
close(bar); 

end

