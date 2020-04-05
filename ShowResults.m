function [ output_args ] = ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles)
%SHOWRESULTS Summary of this function goes here
%   Detailed explanation goes here

% Clear the previous results
cla(handles.axesForward);
cla(handles.axesBackward);
cla(handles.axesComparison);

%% Forwardprojection results
% Fill the detector selection pop up menu
for i = 1:length(params.ProjAngles)
    PopUpItems{i} = num2str(params.ProjAngles(i));
end
set(handles.pumDetector,'string',PopUpItems);
set(handles.pumDetector,'Value',1);

axes(handles.axesForward);
plot(1:params.NumDetectors,resultsForward.Projections(:,1));
grid on

switch(params.ProjType)
    case 1
        % Backprojection results
        axes(handles.axesBackward);
        if(strcmp(params.Filter, 'BackProj(NoFilter)'))
            imshow(resultsBackward.ProjectionsNone)
        elseif(strcmp(params.Filter, 'BackProj(Ramp)'))
            imshow(resultsBackward.ProjectionsRamp)
        elseif(strcmp(params.Filter, 'BackProj(Hamming)'))
            imshow(resultsBackward.ProjectionsHamm)
        end   
        colorbar(handles.axesBackward);
        % Comparison Results
        axes(handles.axesComparison);    
        if(strcmp(params.Filter, 'BackProj(NoFilter)'))
           imshowpair(params.Image, resultsBackward.ProjectionsNone, 'diff');
           set(handles.textSSIM, 'String', resultsBackward.ssimIndexNone);   
        elseif(strcmp(params.Filter, 'BackProj(Ramp)'))
            imshowpair(params.Image, resultsBackward.ProjectionsRamp, 'diff');
            set(handles.textSSIM, 'String', resultsBackward.ssimIndexRamp);   
        elseif(strcmp(params.Filter, 'BackProj(Hamming)'))
            imshowpair(params.Image, resultsBackward.ProjectionsHamm, 'diff');
            set(handles.textSSIM, 'String', resultsBackward.ssimIndexHamm);   
        end  
        colorbar(handles.axesComparison);     
    case 2
        % Backprojection results
        axes(handles.axesBackward);
        if(strcmp(params.Filter, 'BackProj(NoFilter)'))
            imshow(resultsBackward.ProjectionsNone)
        elseif(strcmp(params.Filter, 'BackProj(Ramp)'))
            imshow(resultsBackward.ProjectionsRamp)
        elseif(strcmp(params.Filter, 'BackProj(Hamming)'))
            imshow(resultsBackward.ProjectionsHamm)
        end   
        colorbar(handles.axesBackward);
        % Comparison Results
        axes(handles.axesComparison);    
        if(strcmp(params.Filter, 'BackProj(NoFilter)'))
           imshowpair(params.Image, resultsBackward.ProjectionsNone, 'diff');
           set(handles.textSSIM, 'String', resultsBackward.ssimIndexNone);   
        elseif(strcmp(params.Filter, 'BackProj(Ramp)'))
            imshowpair(params.Image, resultsBackward.ProjectionsRamp, 'diff');
            set(handles.textSSIM, 'String', resultsBackward.ssimIndexRamp);   
        elseif(strcmp(params.Filter, 'BackProj(Hamming)'))
            imshowpair(params.Image, resultsBackward.ProjectionsHamm, 'diff');
            set(handles.textSSIM, 'String', resultsBackward.ssimIndexHamm);   
        end  
        colorbar(handles.axesComparison);  
    case 3
        % Backprojection results
        axes(handles.axesBackward);
        if(strcmp(params.Filter, 'BackProj(NoFilter)'))
            imshow(resultsBackward.ProjectionsNone)
        elseif(strcmp(params.Filter, 'BackProj(Ramp)'))
            imshow(resultsBackward.ProjectionsRamp)
        elseif(strcmp(params.Filter, 'BackProj(Hamming)'))
            imshow(resultsBackward.ProjectionsHamm)
        end   
        colorbar(handles.axesBackward);
        % Comparison Results
        axes(handles.axesComparison);    
        if(strcmp(params.Filter, 'BackProj(NoFilter)'))
           imshowpair(params.Image, resultsBackward.ProjectionsNone, 'diff');
           set(handles.textSSIM, 'String', resultsBackward.ssimIndexNone);   
        elseif(strcmp(params.Filter, 'BackProj(Ramp)'))
            imshowpair(params.Image, resultsBackward.ProjectionsRamp, 'diff');
            set(handles.textSSIM, 'String', resultsBackward.ssimIndexRamp);   
        elseif(strcmp(params.Filter, 'BackProj(Hamming)'))
            imshowpair(params.Image, resultsBackward.ProjectionsHamm, 'diff');
            set(handles.textSSIM, 'String', resultsBackward.ssimIndexHamm);   
        end  
        colorbar(handles.axesComparison);  
    case 4
        % ART results
        axes(handles.axesBackward);
        imshow(resultsART.Projections)
        colorbar(handles.axesBackward);
        % Comparison Results
        axes(handles.axesComparison);
        imshowpair(params.Image, resultsART.Projections, 'diff');
        colorbar(handles.axesComparison);
        set(handles.textSSIM, 'String', resultsART.ssimIndex);
    case 5
        % SIRT results
        axes(handles.axesBackward);
        imshow(resultsSIRT.Projections)
        colorbar(handles.axesBackward);
        % Comparison Results
        axes(handles.axesComparison);
        imshowpair(params.Image, resultsSIRT.Projections, 'diff');
        colorbar(handles.axesComparison);
        set(handles.textSSIM, 'String', resultsSIRT.ssimIndex);
    case 6
        % SART results
        axes(handles.axesBackward);
        imshow(resultsSART.Projections)
        colorbar(handles.axesBackward);
        % Comparison Results
        axes(handles.axesComparison);
        imshowpair(params.Image, resultsSART.Projections, 'diff');
        colorbar(handles.axesComparison);
        set(handles.textSSIM, 'String', resultsSART.ssimIndex);
    case 7
        % ART results
        axes(handles.axesBackward);
        imshow(resultsMART.Projections)
        colorbar(handles.axesBackward);
        % Comparison Results
        axes(handles.axesComparison);
        imshowpair(params.Image, resultsMART.Projections, 'diff');
        colorbar(handles.axesComparison);
        set(handles.textSSIM, 'String', resultsMART.ssimIndex);
end

end

