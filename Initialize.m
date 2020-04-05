function [ params ] = Initialize( handles )
%INÝTÝALÝZE Summary of this function goes here
%   Detailed explanation goes here

%% Get the parameters from user interface
params.ImageSize        = str2double(get(handles.tbImageSize,'String'));        % In terms of pixels
params.Distance         = str2double(get(handles.tbDistance,'String'));         % In terms of pixels
params.NumDetectors     = str2double(get(handles.tbDetectorNum,'String'));      % In terms of integers
params.ProjAngleStep    = str2double(get(handles.tbProjAngleStep1,'String'));    % In terms of degrees
params.NumIteration     = str2double(get(handles.tbIterationNumber,'String'));  % In terms of integers

%% Initialize the calculated parameters
% Type of the projection 
params.ProjType = get(handles.pumProjType,'Value');
% Number of pixels on the image
params.PixelNum         = params.ImageSize * params.ImageSize;              % In terms of integers
% Live refresh checkbox
params.LiveRefresh      = handles.cbLiveRefresh.Value;
% Indexes for the detectors
params.DetectorIndexes  = 0:params.NumDetectors-1;                          % In terms of integers
% Number of projections
params.NumProjections   = floor(360 / params.ProjAngleStep);                % In terms of integers
% Total number of rays projected in total for all projections
params.NumRaysTotal     = params.NumDetectors * params.NumProjections;      % In terms of integers
% Angle between each ray
params.AngleofRays      = (atand((params.ImageSize/2)/(params.Distance-params.ImageSize)) / (params.NumDetectors/2))*1.3; % In terms of degrees 
% Angle of total projection
params.AngleofProj      = (params.NumDetectors-1) * params.AngleofRays;     % In terms of degrees
% Array of angles of each projections
params.ProjAngles       = 0:params.ProjAngleStep:360-params.ProjAngleStep;
% Array of angles of each ray
params.RayAngles        = -linspace(-params.AngleofProj/2,params.AngleofProj/2,params.NumDetectors);
% Locations of pixels in x and y axes
params.XLocs            = -(params.ImageSize)/2 :(params.ImageSize)/2;      % In terms of pixels
params.YLocs            = -(params.ImageSize)/2 :(params.ImageSize)/2;      % In terms of pixels
% Locations of centered pixels in x and y axes
params.XCenterLocs      = -(params.ImageSize-1)/2 :(params.ImageSize-1)/2;  % In terms of pixels
params.YCenterLocs      = -(params.ImageSize-1)/2 :(params.ImageSize-1)/2;  % In terms of pixels
% Initialize the filter as none for backprojection
list                    = get(handles.pumProjType,'String'); 
params.Filter           = list(get(handles.pumProjType,'Value'), :);
% Alpha parameter for ART projection
params.Alpha            = 0.1;
% Display plot size
params.DisplaySize      = 256;
% ART/SIRT length parameter that will make the weight either 1 or 0
params.MinLength        = 0.05;
% dS for SART
params.DeltaS           = 0.5;
params.IntFactor        = 0.001;

%% Initialize the image
params.Image            = phantom('Modified Shepp-Logan', params.ImageSize);
axes(handles.axesImage);
imshow(params.Image);
colorbar(handles.axesImage);

end

