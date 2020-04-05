function [ resultsBackward ] = Backward(resultsForward, params, handles)
%BACKWARD Summary of this function goes here
%   Detailed explanation goes here

% Initialize the backprojection result matrix
resultsBackward.Projections = zeros(params.ImageSize+1, params.ImageSize+1);
% Convert coordinate system to polar coordinate system
[tetha, r] = cart2pol(repmat(params.XLocs, length(params.YLocs), 1), ...
                      repmat(params.YLocs.', 1, length(params.XLocs)));
% Convert angle from radians to degrees for the ease of calculations
tetha = radtodeg(tetha);

% Ramp filter
freqs = linspace(-1, 1, params.NumDetectors).';
rampFilter = abs( freqs );
rampFilter = max(rampFilter) - rampFilter;
% Sinc filter
hammFilter = hamming(params.NumDetectors);

% Filter the projection result in the fourier domain
bar = waitbar(0, 'Processing Backward Projection...');
% Take the fast fourier transform of the projections
projectionsFFT = fft(resultsForward.Projections, params.NumDetectors);
% Apply the filters in frequency domain
projectionsRamp = projectionsFFT.*repmat(rampFilter, 1, params.NumProjections);
projectionsHamm = projectionsFFT.*repmat(hammFilter, 1, params.NumProjections);
% Take the inverse fast fourier transform of the filtered projections
projectionsRamp = ifft(projectionsRamp);
projectionsHamm = ifft(projectionsHamm);
% Trim the results according to the detector number
projectionsRamp = projectionsRamp(1:params.NumDetectors,:);
projectionsHamm = projectionsHamm(1:params.NumDetectors,:);
% Flip the projections matrix since we will propagate backward
projectionsRamp = flipud(projectionsRamp);
projectionsHamm = flipud(projectionsHamm);
projectionsNoneFiltered = flipud(resultsForward.Projections);
% Convert array to matrix for matric multiplications for faster processing
MProjAngles = repmat(params.ProjAngles, length(tetha), 1);

% Process backprojection algorithm
for m = 1:params.ImageSize+1
    % Equation 79 from chapter3 of the textbook, p81
    tethaM = repmat(tetha(m,:)', 1, length(params.ProjAngles));
    AngleM = MProjAngles - tethaM;
    rM = repmat(r(m,:)', 1, length(params.ProjAngles));
    L = sqrt((params.Distance+rM.*sind(AngleM)).^2 + (rM.*cosd(AngleM)).^2);
    % Equation 80 from chapter3 of the textbook, p81
    gamma = atand((rM.*cosd(AngleM)) ./ (params.Distance+rM.*sind(AngleM)));    
    for n = 1:params.ImageSize+1
        % Calculate non filtered projection
        % Equation 98 from chapter3 of the textbook, p85
        Q = diag(interp1(params.RayAngles',projectionsNoneFiltered,gamma(n,:)))';
        resultsBackward.ProjectionsNone(m,n) = real(degtorad(params.ProjAngleStep)*sum((1./(L(n,:).^2)).*Q));
        % Calculate ramp filtered projection
        % Equation 98 from chapter3 of the textbook, p85
        Q = diag(interp1(params.RayAngles',projectionsRamp,gamma(n,:)))';
        resultsBackward.ProjectionsRamp(m,n) = real(degtorad(params.ProjAngleStep)*sum((1./(L(n,:).^2)).*Q));
        % Calculate sinc filtered projection
        % Equation 98 from chapter3 of the textbook, p85
        Q = diag(interp1(params.RayAngles',projectionsHamm,gamma(n,:)))';
        resultsBackward.ProjectionsHamm(m,n) = real(degtorad(params.ProjAngleStep)*sum((1./(L(n,:).^2)).*Q));
    end
    
    % Plot the current projection on GUI if it is activated
    if params.LiveRefresh
        if(strcmp(params.Filter, 'BackProj(NoFilter)'))
            imshow(resultsBackward.ProjectionsNone/max(max(resultsBackward.ProjectionsNone)), 'Parent', handles.axesBackward);
        elseif(strcmp(params.Filter, 'BackProj(Ramp)'))
            imshow(resultsBackward.ProjectionsRamp/max(max(resultsBackward.ProjectionsRamp)), 'Parent', handles.axesBackward);
        elseif(strcmp(params.Filter, 'BackProj(Hamming)'))
            imshow(resultsBackward.ProjectionsHamm/max(max(resultsBackward.ProjectionsHamm)), 'Parent', handles.axesBackward);
        end    
        % Set the colorbar on
        colorbar(handles.axesBackward);
    end
    % Update the progress bar for each iteration
    waitbar(m/size(resultsBackward.Projections,1));
end

% Close the progress bar
close(bar);
% Normalize the results between 0 and 1
resultsBackward.ProjectionsNone = resultsBackward.ProjectionsNone/max(max(resultsBackward.ProjectionsNone));
resultsBackward.ProjectionsRamp = resultsBackward.ProjectionsRamp/max(max(resultsBackward.ProjectionsRamp));
resultsBackward.ProjectionsHamm = resultsBackward.ProjectionsHamm/max(max(resultsBackward.ProjectionsHamm));
% Calculate the similarity index
% resultsBackward.ProjectionsNone(find(isnan(resultsBackward.ProjectionsNone))) = 0;
% resultsBackward.ssimIndexNone = max(max(normxcorr2(resultsBackward.ProjectionsNone(1:end-1, 1:end-1), params.Image)));
resultsBackward.ssimIndexNone = ssim(resultsBackward.ProjectionsNone(1:end-1, 1:end-1), params.Image);
resultsBackward.ProjectionsRamp(find(isnan(resultsBackward.ProjectionsRamp))) = 0;
resultsBackward.ssimIndexRamp = max(max(normxcorr2(resultsBackward.ProjectionsRamp(1:end-1, 1:end-1), params.Image)));
resultsBackward.ProjectionsHamm(find(isnan(resultsBackward.ProjectionsHamm))) = 0;
resultsBackward.ssimIndexHamm = max(max(normxcorr2(resultsBackward.ProjectionsHamm(1:end-1, 1:end-1), params.Image)));

end

