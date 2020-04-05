function [ resultsForward ] = Forward(params, handles)
%UNTÝTLED Summary of this function goes here
%   Detailed explanation goes here

% Initialize the results parameters
resultsForward.Projections = zeros(params.NumDetectors, params.NumProjections);
resultsForward.wArt = zeros(params.NumRaysTotal, params.ImageSize^2);
resultsForward.NiArt = zeros(params.NumRaysTotal, 1);
resultsForward.wSart = zeros(params.NumRaysTotal, params.ImageSize^2);
resultsForward.NiSart = zeros(params.NumRaysTotal, 1);
resultsForward.Li = zeros(params.NumRaysTotal, 1);
resultsForward.p = zeros(params.NumRaysTotal, 1);
% Initialize the counter for the loops
loopCount = 0;
% Initialize the progress bar
bar = waitbar(0, 'Processing Forward Projection...');
% Calculate the x and y positions of the sources
xSource = -params.Distance * sind(params.ProjAngles);
ySource = params.Distance * cosd(params.ProjAngles);
% Calculate the angles of each ray for each projection 
angle = repmat(params.ProjAngles, params.NumDetectors, 1);
rayAngles = repmat((params.DetectorIndexes * params.AngleofRays)', 1, params.NumProjections);
angle = -angle - (params.AngleofProj/2) + rayAngles;

% Iterate over each projection
for i = 0:params.ProjAngleStep:360 - params.ProjAngleStep
    % Counter for the projection number
    projCount = (i/params.ProjAngleStep)+1;
    % Expand vectors to matrix form for matrix multiplication for faster processing
    anglesExpanded = repmat(tand(angle(:,projCount)),1,length(params.YLocs));
    ylocsExpanded = repmat(params.YLocs - ySource(projCount),params.NumDetectors,1);
    xlocsExpanded = repmat(params.XLocs - xSource(projCount),params.NumDetectors,1);
    % Calculate the x intersections for whole y points
    xIntersects = xSource(projCount) + anglesExpanded .* ylocsExpanded; 
    % Calculate the y intersections for whole x points
    yIntersects = ySource(projCount) + xlocsExpanded ./ anglesExpanded;
    % Iterate over all detectors(rays)
    for j = 0:params.NumDetectors - 1
        % Counter for the total loop number
        loopCount=loopCount+1;
        % Initializ intersection points as empty
        Intersects = 0;
        % Put the whole points of the ray in an array(nonintersecting points also)
        wholeRay = [params.XLocs.' yIntersects(j+1,:).'; xIntersects(j+1,:).' params.YLocs.'];
        % Sort the points according to the x positions
        wholeRay = sortrows(wholeRay, 1);
        % Find the part of the ray that lays inside the x boundries
        xMin = find(wholeRay(:,1) >= min(params.XLocs));
        xMax = find(wholeRay(:,1) <= max(params.XLocs));
        % Check if there is any indice that satisfies the condition
        if(~isempty(xMin) && ~isempty(xMax))
            xIntersects2 = wholeRay(xMin(1):xMax(end),:);
            % Sort the rows according to the y indexes
            wholeRay = sortrows(xIntersects2,2);
            % Find the part of the ray that lays inside the y boundries
            yMin = find(wholeRay(:,2) >= min(params.YLocs));
            yMax = find(wholeRay(:,2) <= max(params.YLocs));
            % Check if there is any indice that satisfies the condition
            if(~isempty(yMin) && ~isempty(yMax))
                % Set the intersection points
                Intersects = wholeRay(yMin(1):yMax(end),:);
            end
        end
                        
        % If the current ray intersects the image
        if (length(Intersects) > 1)
            % Find the pixel values for the middle points
            xMiddle = (Intersects(1:length(Intersects)-1,1) + Intersects(2:length(Intersects),1))/2;
            yMiddle = (Intersects(1:length(Intersects)-1,2) + Intersects(2:length(Intersects),2))/2;
            % Find the lengths between dots from simple hypotenus formula
            legthIntersects = sqrt((Intersects(1:length(Intersects)-1,1) - Intersects(2:length(Intersects),1)).^2 + ...
                                   (Intersects(1:length(Intersects)-1,2) - Intersects(2:length(Intersects),2)).^2);
            % Take the line integral of rays on the image
            for k = 1:length(Intersects) - 1
                % Get each location on the image
                [dummyValue, xLoc] = min(abs(params.XCenterLocs - xMiddle(k)));
                [dummyValue, yLoc] = min(abs(params.YCenterLocs - yMiddle(k)));        
                % Multiply each location with corresponding lenth to integrate over the ray
                resultsForward.FanBeam(projCount,j+1,k) = params.Image(yLoc, xLoc) * legthIntersects(k);  
                % ART / SIRT projections
                resultsForward.wArt(loopCount, xLoc + (yLoc-1) * params.ImageSize) = (legthIntersects(k) >= params.MinLength);
            end
            resultsForward.Projections(params.NumDetectors-j,projCount) = sum(resultsForward.FanBeam(projCount,j+1,:));
            % Record the total length of the intersection of the ray inside the image
            resultsForward.Li(loopCount) = sum(legthIntersects);
            resultsForward.NiArt(loopCount, 1) = resultsForward.wArt(loopCount,:) * resultsForward.wArt(loopCount,:)';
            
            
            % SART
            % Calculate the total number of sample that will be taken on the line
            SampleNum = floor(sqrt( (Intersects(1,1) -  Intersects(end,1))^2 + (Intersects(1,2) -  Intersects(end,2))^2 ) /  params.DeltaS);
            % Calculate the x coordinates equally spaced over the intersection line
            fx =  linspace(Intersects(1,1),Intersects(size(Intersects,1),1),SampleNum);
            % Calculate the y coordinates equally spaced over the intersection line
            fy =  linspace(Intersects(1,2),Intersects(size(Intersects,1),2),SampleNum);
            % Form a matrix with the coordinates
            f = [fx' fy'];
            % Take the nearest two points around the sampled point
            x1 = nearest(f(:,1) - params.IntFactor) - params.DeltaS;
            x2 = nearest(f(:,1) - params.IntFactor) + params.DeltaS;
            y1 = nearest(f(:,2) - params.IntFactor) - params.DeltaS;
            y2 = nearest(f(:,2) - params.IntFactor) + params.DeltaS;
            points = cat(3, [x1 y1], [x2 y1], [x1 y2], [x2 y2]);
            pixelRowIndex = - floor(points(:,2,:))+ params.ImageSize/2;
            pixelColumnIndex = ceil(points(:,1,:)) + params.ImageSize/2;
            % Calculate the area of the intersection
            for n = 1 : (size(f,1)-1)            
                t = f(n,1) - points(n,1,:);
                u = f(n,2) - points(n,2,:);
                for c = 1:4
                    if((pixelColumnIndex(n,c) <= params.ImageSize) && (pixelRowIndex(n,c) <= params.ImageSize) && (pixelColumnIndex(n,c) > 0) && (pixelRowIndex(n,c) > 0) )
                        resultsForward.wSart(loopCount, pixelColumnIndex(n,c) + (pixelRowIndex(n,c) - 1) * params.ImageSize) = ...
                        resultsForward.wSart(loopCount, pixelColumnIndex(n,c) + (pixelRowIndex(n,c) - 1) * params.ImageSize) + (1-t(c))*(1-u(c))/2;
                    end
                end;
            end;  
        end
        resultsForward.NiSart(loopCount, 1) = resultsForward.wSart(loopCount,:) * resultsForward.wSart(loopCount,:)';
        resultsForward.p(loopCount, 1) = resultsForward.Projections(j+1, projCount);
    end
    
    % Plot the current projection on GUI if it is activated
    if params.LiveRefresh
        plot(handles.axesForward, 1:params.NumDetectors,resultsForward.Projections(:,projCount));
    end
    % Update the progress bar for each iteration
    waitbar(i/(360 - params.ProjAngleStep));
end
% Close the progress bar
close(bar);

end

