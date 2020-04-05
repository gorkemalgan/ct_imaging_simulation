function varargout = e162565(varargin)
% E162565 MATLAB code for e162565.fig
%      E162565, by itself, creates a new E162565 or raises the existing
%      singleton*.
%
%      H = E162565 returns the handle to a new E162565 or the handle to
%      the existing singleton*.
%
%      E162565('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in E162565.M with the given input arguments.
%
%      E162565('Property','Value',...) creates a new E162565 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before e162565_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to e162565_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help e162565

% Last Modified by GUIDE v2.5 19-May-2017 01:26:28

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @e162565_OpeningFcn, ...
                   'gui_OutputFcn',  @e162565_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before e162565 is made visible.
function e162565_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to e162565 (see VARARGIN)

% Choose default command line output for e162565
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes e162565 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = e162565_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function tbImageSize_Callback(hObject, eventdata, handles)
% hObject    handle to tbImageSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbImageSize as text
%        str2double(get(hObject,'String')) returns contents of tbImageSize as a double


% --- Executes during object creation, after setting all properties.
function tbImageSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbImageSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbDistance_Callback(hObject, eventdata, handles)
% hObject    handle to tbDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbDistance as text
%        str2double(get(hObject,'String')) returns contents of tbDistance as a double


% --- Executes during object creation, after setting all properties.
function tbDistance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbDistance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbDetectorNum_Callback(hObject, eventdata, handles)
% hObject    handle to tbDetectorNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbDetectorNum as text
%        str2double(get(hObject,'String')) returns contents of tbDetectorNum as a double


% --- Executes during object creation, after setting all properties.
function tbDetectorNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbDetectorNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbProjAngleStepp_Callback(hObject, eventdata, handles)
% hObject    handle to tbProjAngleStepp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbProjAngleStepp as text
%        str2double(get(hObject,'String')) returns contents of tbProjAngleStepp as a double


% --- Executes during object creation, after setting all properties.
function tbProjAngleStepp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbProjAngleStepp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbForward.
function pbForward_Callback(hObject, eventdata, handles)
% hObject    handle to pbForward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pbBackward.
function pbBackward_Callback(hObject, eventdata, handles)
% hObject    handle to pbBackward (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
cla(handles.axesBackward);
% Initialize the parameters according to the user interface inputs
params = Initialize(handles);
% Run backward projection
switch(params.ProjType)
    case 1
        resultsBackward = Backward(resultsForward, params, handles);
    case 2
        resultsBackward = Backward(resultsForward, params, handles);
    case 3
        resultsBackward = Backward(resultsForward, params, handles);
    case 4
        resultsART = ART(resultsForward, params, handles);
    case 5
        resultsSIRT = SIRT(resultsForward, params, handles);
    case 6
        resultsSART = SART(resultsForward, params, handles);
    case 7
        resultsMART = M_ART(resultsForward, params, handles);
end
ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);

% --- Executes on selection change in pumDetector.
function pumDetector_Callback(hObject, eventdata, handles)
% hObject    handle to pumDetector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
axes(handles.axesForward)
detectors = 1:params.NumDetectors;
list=get(handles.pumDetector,'String'); 
choice=str2double(list{get(handles.pumDetector,'Value')});
plot(detectors, resultsForward.Projections(:,(choice/params.ProjAngleStep)+1));
grid on
xlabel('Detector Samples','Color','w','FontSize',8);
ylabel('Projections','Color','w','FontSize',8);  



% Hints: contents = cellstr(get(hObject,'String')) returns pumDetector contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumDetector

% --- Executes during object creation, after setting all properties.
function pumDetector_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumDetector (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pumFilter.
function pumFilter_Callback(hObject, eventdata, handles)
% hObject    handle to pumFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumFilter contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumFilter
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
% Get the filter
list = get(handles.pumFilter,'String'); 
params.Filter = list(get(handles.pumFilter,'Value'), :);
% Show the results
ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);


% --- Executes during object creation, after setting all properties.
function pumFilter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumFilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pbSetDefaultValues.
function pbSetDefaultValues_Callback(hObject, eventdata, handles)
% hObject    handle to pbSetDefaultValues (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.tbImageSize, 'String', 50);
set(handles.tbDistance, 'String', 71);
set(handles.tbDetectorNum, 'String', 180);
set(handles.tbProjAngleStep1, 'String', 2);


% --- Executes on button press in cbLiveRefresh.
function cbLiveRefresh_Callback(hObject, eventdata, handles)
% hObject    handle to cbLiveRefresh (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of cbLiveRefresh
global params;
params.LiveRefresh      = handles.cbLiveRefresh.Value;


% --- Executes on selection change in pumProjType.
function pumProjType_Callback(hObject, eventdata, handles)
% hObject    handle to pumProjType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pumProjType contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pumProjType
global params;
params.ProjType = get(handles.pumProjType,'Value');


% --- Executes during object creation, after setting all properties.
function pumProjType_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pumProjType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function tbIterationNumber_Callback(hObject, eventdata, handles)
% hObject    handle to tbIterationNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbIterationNumber as text
%        str2double(get(hObject,'String')) returns contents of tbIterationNumber as a double
global params;
params.NumIteration     = str2double(get(handles.tbIterationNumber,'String'));  % In terms of integers

% --- Executes during object creation, after setting all properties.
function tbIterationNumber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbIterationNumber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function tbImageSizeFrom_Callback(hObject, eventdata, handles)
% hObject    handle to tbImageSizeFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbImageSizeFrom as text
%        str2double(get(hObject,'String')) returns contents of tbImageSizeFrom as a double


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2



function tbImageSizeStep_Callback(hObject, eventdata, handles)
% hObject    handle to tbImageSizeStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbImageSizeStep as text
%        str2double(get(hObject,'String')) returns contents of tbImageSizeStep as a double


% --- Executes during object creation, after setting all properties.
function tbImageSizeStep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbImageSizeStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbImageSizeTo_Callback(hObject, eventdata, handles)
% hObject    handle to tbImageSizeTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbImageSizeTo as text
%        str2double(get(hObject,'String')) returns contents of tbImageSizeTo as a double


% --- Executes during object creation, after setting all properties.
function tbImageSizeTo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbImageSizeTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbDistanceFrom_Callback(hObject, eventdata, handles)
% hObject    handle to tbDistanceFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbDistanceFrom as text
%        str2double(get(hObject,'String')) returns contents of tbDistanceFrom as a double


% --- Executes during object creation, after setting all properties.
function tbDistanceFrom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbDistanceFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbDistanceStep_Callback(hObject, eventdata, handles)
% hObject    handle to tbDistanceStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbDistanceStep as text
%        str2double(get(hObject,'String')) returns contents of tbDistanceStep as a double


% --- Executes during object creation, after setting all properties.
function tbDistanceStep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbDistanceStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbDistanceTo_Callback(hObject, eventdata, handles)
% hObject    handle to tbDistanceTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbDistanceTo as text
%        str2double(get(hObject,'String')) returns contents of tbDistanceTo as a double


% --- Executes during object creation, after setting all properties.
function tbDistanceTo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbDistanceTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbNumDetectorsFrom_Callback(hObject, eventdata, handles)
% hObject    handle to tbNumDetectorsFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbNumDetectorsFrom as text
%        str2double(get(hObject,'String')) returns contents of tbNumDetectorsFrom as a double


% --- Executes during object creation, after setting all properties.
function tbNumDetectorsFrom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbNumDetectorsFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbNumDetectorsStep_Callback(hObject, eventdata, handles)
% hObject    handle to tbNumDetectorsStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbNumDetectorsStep as text
%        str2double(get(hObject,'String')) returns contents of tbNumDetectorsStep as a double


% --- Executes during object creation, after setting all properties.
function tbNumDetectorsStep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbNumDetectorsStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbNumDetectorsTo_Callback(hObject, eventdata, handles)
% hObject    handle to tbNumDetectorsTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbNumDetectorsTo as text
%        str2double(get(hObject,'String')) returns contents of tbNumDetectorsTo as a double


% --- Executes during object creation, after setting all properties.
function tbNumDetectorsTo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbNumDetectorsTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbProjAngleFrom_Callback(hObject, eventdata, handles)
% hObject    handle to tbProjAngleFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbProjAngleFrom as text
%        str2double(get(hObject,'String')) returns contents of tbProjAngleFrom as a double


% --- Executes during object creation, after setting all properties.
function tbProjAngleFrom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbProjAngleFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbProjAngleTo_Callback(hObject, eventdata, handles)
% hObject    handle to tbProjAngleTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbProjAngleTo as text
%        str2double(get(hObject,'String')) returns contents of tbProjAngleTo as a double


% --- Executes during object creation, after setting all properties.
function tbProjAngleTo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbProjAngleTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbIterationNumFrom_Callback(hObject, eventdata, handles)
% hObject    handle to tbIterationNumFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbIterationNumFrom as text
%        str2double(get(hObject,'String')) returns contents of tbIterationNumFrom as a double


% --- Executes during object creation, after setting all properties.
function tbIterationNumFrom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbIterationNumFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbIterationNumStep_Callback(hObject, eventdata, handles)
% hObject    handle to tbIterationNumStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbIterationNumStep as text
%        str2double(get(hObject,'String')) returns contents of tbIterationNumStep as a double


% --- Executes during object creation, after setting all properties.
function tbIterationNumStep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbIterationNumStep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tbIterationNumTo_Callback(hObject, eventdata, handles)
% hObject    handle to tbIterationNumTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbIterationNumTo as text
%        str2double(get(hObject,'String')) returns contents of tbIterationNumTo as a double


% --- Executes during object creation, after setting all properties.
function tbIterationNumTo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbIterationNumTo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function tbImageSizeFrom_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbImageSizeFrom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bImageSizeTest.
function bImageSizeTest_Callback(hObject, eventdata, handles)
% hObject    handle to bImageSizeTest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
ImageSizeFrom   = str2double(get(handles.tbImageSizeFrom,'String'));
ImageSizeStep   = str2double(get(handles.tbImageSizeStep,'String'));
ImageSizeTo     = str2double(get(handles.tbImageSizeTo,'String'));

cla(handles.axesTestResults);
xAxes = ImageSizeFrom:ImageSizeStep:ImageSizeTo;
yAxes = zeros(1, length(xAxes));
count = 0;

for i = ImageSizeFrom:ImageSizeStep:ImageSizeTo
    count = count + 1;
    set(handles.tbImageSize, 'String', num2str(i));
    params = Initialize(handles);    
    resultsForward = Forward(params, handles);
    % Run backward projection
    switch(params.ProjType)
        case 1
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexNone; 
        case 2
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexRamp;  
        case 3
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexHamm; 
        case 4
            resultsART = ART(resultsForward, params, handles);
            yAxes(count) = resultsART.ssimIndex;
        case 5
            resultsSIRT = SIRT(resultsForward, params, handles);
            yAxes(count) = resultsSIRT.ssimIndex;
        case 6
            resultsSART = SART(resultsForward, params, handles);
            yAxes(count) = resultsSART.ssimIndex;
    end
    % Show the results
    ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, resultsMART, params, handles);
    % Update the plot
    axes(handles.axesTestResults);
    plot(xAxes, yAxes);
    ylabel('Correlation'); xlabel('Image Size');
end

% --- Executes on button press in pbImageSizeTestAll.
function pbImageSizeTestAll_Callback(hObject, eventdata, handles)
% hObject    handle to pbImageSizeTestAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
ImageSizeFrom   = str2double(get(handles.tbImageSizeFrom,'String'));
ImageSizeStep   = str2double(get(handles.tbImageSizeStep,'String'));
ImageSizeTo     = str2double(get(handles.tbImageSizeTo,'String'));

cla(handles.axesTestResults);
xAxes = ImageSizeFrom:ImageSizeStep:ImageSizeTo;
yAxes = zeros(6, length(xAxes));
count = 0;

for i = ImageSizeFrom:ImageSizeStep:ImageSizeTo
    count = count + 1;
    set(handles.tbImageSize, 'String', num2str(i));
    params = Initialize(handles);    
    resultsForward = Forward(params, handles);
    % Run backward projection
    resultsBackward = Backward(resultsForward, params, handles);
    yAxes(1,count) = resultsBackward.ssimIndexNone;   
    yAxes(2,count) = resultsBackward.ssimIndexRamp;
    yAxes(3,count) = resultsBackward.ssimIndexHamm; 
    resultsART = ART(resultsForward, params, handles);
    yAxes(4,count) = resultsART.ssimIndex;  
    resultsSIRT = SIRT(resultsForward, params, handles);
    yAxes(5,count) = resultsSIRT.ssimIndex;  
    resultsSART = SART(resultsForward, params, handles);
    yAxes(6,count) = resultsSART.ssimIndex; 
    % Show the results
    ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);
    % Update the plot
    axes(handles.axesTestResults);
    plot(xAxes, yAxes);
    legend('Backward(NoFilter)', 'Backward(Ramp)', 'Backward(Hamming)', 'ART', 'SIRT', 'SART');
    lh=findall(gcf,'tag','legend');
    set(lh,'location','eastoutside');
    ylabel('Correlation'); xlabel('Image Size');
end

% --- Executes on button press in bDistanceTest.
function bDistanceTest_Callback(hObject, eventdata, handles)
% hObject    handle to bDistanceTest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
from   = str2double(get(handles.tbDistanceFrom,'String'));
step   = str2double(get(handles.tbDistanceStep,'String'));
to     = str2double(get(handles.tbDistanceTo,'String'));

cla(handles.axesTestResults);
xAxes = from:step:to;
yAxes = zeros(1, length(xAxes));
count = 0;

for i = from:step:to
    count = count + 1;
    set(handles.tbDistance, 'String', num2str(i));
    params = Initialize(handles);    
    resultsForward = Forward(params, handles);
    % Run backward projection
    switch(params.ProjType)
        case 1
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexNone;
        case 2
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexRamp;
        case 3
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexHamm; 
        case 4
            resultsART = ART(resultsForward, params, handles);
            yAxes(count) = resultsART.ssimIndex;
        case 5
            resultsSIRT = SIRT(resultsForward, params, handles);
            yAxes(count) = resultsSIRT.ssimIndex;
        case 6
            resultsSART = SART(resultsForward, params, handles);
            yAxes(count) = resultsSART.ssimIndex;
    end
    % Show the results
    ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);
    % Update the plot
    cla(handles.axesTestResults);
    axes(handles.axesTestResults);
    plot(xAxes, yAxes);
    ylabel('Correlation'); xlabel('Distance');
end

% --- Executes on button press in pbDistanceTestAll.
function pbDistanceTestAll_Callback(hObject, eventdata, handles)
% hObject    handle to pbDistanceTestAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
from   = str2double(get(handles.tbDistanceFrom,'String'));
step   = str2double(get(handles.tbDistanceStep,'String'));
to     = str2double(get(handles.tbDistanceTo,'String'));

cla(handles.axesTestResults);
xAxes = from:step:to;
yAxes = zeros(1, length(xAxes));
count = 0;

for i = from:step:to
    count = count + 1;
    set(handles.tbDistance, 'String', num2str(i));
    params = Initialize(handles);    
    resultsForward = Forward(params, handles);
    % Run backward projection
    resultsBackward = Backward(resultsForward, params, handles);
    yAxes(1,count) = resultsBackward.ssimIndexNone;   
    yAxes(2,count) = resultsBackward.ssimIndexRamp;
    yAxes(3,count) = resultsBackward.ssimIndexHamm; 
    resultsART = ART(resultsForward, params, handles);
    yAxes(4,count) = resultsART.ssimIndex;  
    resultsSIRT = SIRT(resultsForward, params, handles);
    yAxes(5,count) = resultsSIRT.ssimIndex;  
    resultsSART = SART(resultsForward, params, handles);
    yAxes(6,count) = resultsSART.ssimIndex; 
    % Show the results
    ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);
    % Update the plot
    cla(handles.axesTestResults);
    axes(handles.axesTestResults);
    plot(xAxes, yAxes);
    legend('Backward(NoFilter)', 'Backward(Ramp)', 'Backward(Hamming)', 'ART', 'SIRT', 'SART');
    lh=findall(gcf,'tag','legend');
    set(lh,'location','eastoutside');
    ylabel('Correlation'); xlabel('Distance');
end

% --- Executes on button press in bDetectorNumTest.
function bDetectorNumTest_Callback(hObject, eventdata, handles)
% hObject    handle to bDetectorNumTest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
from   = str2double(get(handles.tbNumDetectorsFrom,'String'));
step   = str2double(get(handles.tbNumDetectorsStep,'String'));
to     = str2double(get(handles.tbNumDetectorsTo,'String'));

cla(handles.axesTestResults);
xAxes = from:step:to;
yAxes = zeros(1, length(xAxes));
count = 0;

for i = from:step:to
    count = count + 1;
    set(handles.tbDetectorNum, 'String', num2str(i));
    params = Initialize(handles);    
    resultsForward = Forward(params, handles);
    % Run backward projection
    switch(params.ProjType)
        case 1
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexNone;  
        case 2
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexRamp;  
        case 3
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexHamm; 
        case 4
            resultsART = ART(resultsForward, params, handles);
            yAxes(count) = resultsART.ssimIndex;
        case 5
            resultsSIRT = SIRT(resultsForward, params, handles);
            yAxes(count) = resultsSIRT.ssimIndex;
        case 6
            resultsSART = SART(resultsForward, params, handles);
            yAxes(count) = resultsSART.ssimIndex;
    end
    % Show the results
    ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);
    % Update the plot
    cla(handles.axesTestResults);
    axes(handles.axesTestResults);
    plot(xAxes, yAxes);
    ylabel('Correlation'); xlabel('Detector Number');
end

% --- Executes on button press in pbDetectorNumTestAll.
function pbDetectorNumTestAll_Callback(hObject, eventdata, handles)
% hObject    handle to pbDetectorNumTestAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
from   = str2double(get(handles.tbNumDetectorsFrom,'String'));
step   = str2double(get(handles.tbNumDetectorsStep,'String'));
to     = str2double(get(handles.tbNumDetectorsTo,'String'));

cla(handles.axesTestResults);
xAxes = from:step:to;
yAxes = zeros(6, length(xAxes));
count = 0;

for i = from:step:to
    count = count + 1;
    set(handles.tbDetectorNum, 'String', num2str(i));
    params = Initialize(handles);    
    resultsForward = Forward(params, handles);
    % Run backward projection
    resultsBackward = Backward(resultsForward, params, handles);
    yAxes(1,count) = resultsBackward.ssimIndexNone;   
    yAxes(2,count) = resultsBackward.ssimIndexRamp;
    yAxes(3,count) = resultsBackward.ssimIndexHamm; 
    resultsART = ART(resultsForward, params, handles);
    yAxes(4,count) = resultsART.ssimIndex;  
    resultsSIRT = SIRT(resultsForward, params, handles);
    yAxes(5,count) = resultsSIRT.ssimIndex;  
    resultsSART = SART(resultsForward, params, handles);
    yAxes(6,count) = resultsSART.ssimIndex; 
    % Show the results
    ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);
    % Update the plot
    cla(handles.axesTestResults);
    axes(handles.axesTestResults);
    plot(xAxes, yAxes);
    legend('Backward(NoFilter)', 'Backward(Ramp)', 'Backward(Hamming)', 'ART', 'SIRT', 'SART');
    lh=findall(gcf,'tag','legend');
    set(lh,'location','eastoutside');
    ylabel('Correlation'); xlabel('Detector Number');
end

% --- Executes on button press in bProjAngleTest.
function bProjAngleTest_Callback(hObject, eventdata, handles)
% hObject    handle to bProjAngleTest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
from   = str2double(get(handles.tbProjAngleFrom,'String'));
step   = str2double(get(handles.tbProjAngleStepp,'String'));
to     = str2double(get(handles.tbProjAngleTo,'String'));

cla(handles.axesTestResults);
xAxes = from:step:to;
yAxes = zeros(1, length(xAxes));
count = 0;

for i = from:step:to
    count = count + 1;
    set(handles.tbProjAngleStep1, 'String', num2str(i));
    params = Initialize(handles);    
    resultsForward = Forward(params, handles);
    % Run backward projection
    switch(params.ProjType)
        case 1
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexNone;   
        case 2
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexRamp;
        case 3
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexHamm;
        case 4
            resultsART = ART(resultsForward, params, handles);
            yAxes(count) = resultsART.ssimIndex;
        case 5
            resultsSIRT = SIRT(resultsForward, params, handles);
            yAxes(count) = resultsSIRT.ssimIndex;
        case 6
            resultsSART = SART(resultsForward, params, handles);
            yAxes(count) = resultsSART.ssimIndex;
    end
    % Show the results
    ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);
    % Update the plot
    cla(handles.axesTestResults);
    axes(handles.axesTestResults);
    plot(xAxes, yAxes);
    ylabel('Correlation'); xlabel('Projection Angle');
end

% --- Executes on button press in pbProjAngleTestAll.
function pbProjAngleTestAll_Callback(hObject, eventdata, handles)
% hObject    handle to pbProjAngleTestAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
from   = str2double(get(handles.tbProjAngleFrom,'String'));
step   = str2double(get(handles.tbProjAngleStepp,'String'));
to     = str2double(get(handles.tbProjAngleTo,'String'));

cla(handles.axesTestResults);
xAxes = from:step:to;
yAxes = zeros(1, length(xAxes));
count = 0;

for i = from:step:to
    count = count + 1;
    set(handles.tbProjAngleStep1, 'String', num2str(i));
    params = Initialize(handles);    
    resultsForward = Forward(params, handles);
    % Run backward projection
    resultsBackward = Backward(resultsForward, params, handles);
    yAxes(1,count) = resultsBackward.ssimIndexNone;   
    yAxes(2,count) = resultsBackward.ssimIndexRamp;
    yAxes(3,count) = resultsBackward.ssimIndexHamm; 
    resultsART = ART(resultsForward, params, handles);
    yAxes(4,count) = resultsART.ssimIndex;  
    resultsSIRT = SIRT(resultsForward, params, handles);
    yAxes(5,count) = resultsSIRT.ssimIndex;  
    resultsSART = SART(resultsForward, params, handles);
    yAxes(6,count) = resultsSART.ssimIndex; 
    % Show the results
    ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);
    % Update the plot
    cla(handles.axesTestResults);
    axes(handles.axesTestResults);
    plot(xAxes, yAxes);
    legend('Backward(NoFilter)', 'Backward(Ramp)', 'Backward(Hamming)', 'ART', 'SIRT', 'SART');
    lh=findall(gcf,'tag','legend');
    set(lh,'location','eastoutside');
    ylabel('Correlation'); xlabel('Projection Angle');
end


% --- Executes on button press in bIterationNumTest.
function bIterationNumTest_Callback(hObject, eventdata, handles)
% hObject    handle to bIterationNumTest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
from   = str2double(get(handles.tbIterationNumFrom,'String'));
step   = str2double(get(handles.tbIterationNumStep,'String'));
to     = str2double(get(handles.tbIterationNumTo,'String'));

cla(handles.axesTestResults);
xAxes = from:step:to;
yAxes = zeros(1, length(xAxes));
count = 0;

for i = from:step:to
    count = count + 1;
    set(handles.tbIterationNumber, 'String', num2str(i));
    params = Initialize(handles);    
    resultsForward = Forward(params, handles);
    % Run backward projection
    switch(params.ProjType)
        case 1
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexNone;
        case 2
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexRamp; 
        case 3
            resultsBackward = Backward(resultsForward, params, handles);
            yAxes(count) = resultsBackward.ssimIndexHamm; 
        case 4
            resultsART = ART(resultsForward, params, handles);
            yAxes(count) = resultsART.ssimIndex;
        case 5
            resultsSIRT = SIRT(resultsForward, params, handles);
            yAxes(count) = resultsSIRT.ssimIndex;
        case 6
            resultsSART = SART(resultsForward, params, handles);
            yAxes(count) = resultsSART.ssimIndex;
    end
    % Show the results
    ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);
    % Update the plot
    cla(handles.axesTestResults);
    axes(handles.axesTestResults);
    plot(xAxes, yAxes);
    ylabel('Correlation'); xlabel('Iteration Number');
end

% --- Executes on button press in bIterationNumTestAll.
function bIterationNumTestAll_Callback(hObject, eventdata, handles)
% hObject    handle to bIterationNumTestAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;
from   = str2double(get(handles.tbIterationNumFrom,'String'));
step   = str2double(get(handles.tbIterationNumStep,'String'));
to     = str2double(get(handles.tbIterationNumTo,'String'));

cla(handles.axesTestResults);
xAxes = from:step:to;
yAxes = zeros(3, length(xAxes));
count = 0;

for i = from:step:to
    count = count + 1;
    set(handles.tbIterationNumber, 'String', num2str(i));
    params = Initialize(handles);    
    resultsForward = Forward(params, handles);
    % Run backward projection
    resultsART = ART(resultsForward, params, handles);
    yAxes(1,count) = resultsART.ssimIndex;  
    resultsSIRT = SIRT(resultsForward, params, handles);
    yAxes(2,count) = resultsSIRT.ssimIndex;  
    resultsSART = SART(resultsForward, params, handles);
    yAxes(3,count) = resultsSART.ssimIndex; 
    % Show the results
    ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);
    % Update the plot
    cla(handles.axesTestResults);
    axes(handles.axesTestResults);
    plot(xAxes, yAxes);
    legend('ART', 'SIRT', 'SART');
    lh=findall(gcf,'tag','legend');
    set(lh,'location','eastoutside');
    ylabel('Correlation'); xlabel('Iteration Number');
end


function tbProjAngleStep1_Callback(hObject, eventdata, handles)
% hObject    handle to tbProjAngleStep1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tbProjAngleStep1 as text
%        str2double(get(hObject,'String')) returns contents of tbProjAngleStep1 as a double


% --- Executes during object creation, after setting all properties.
function tbProjAngleStep1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tbProjAngleStep1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in bPlotResults.
function bPlotResults_Callback(hObject, eventdata, handles)
% hObject    handle to bPlotResults (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
h = findobj(handles.axesTestResults,'Type','line');
x = get(h,'Xdata');
y = get(h,'Ydata');
legendStr = findobj(gcf,'Type','Legend');
if(iscell(x))
    x = cell2mat(x);
    x = x(1,:);
    y = cell2mat(y);
end
figure; plot(x,y);
legend(legendStr.String, -1);
lh=findall(gcf,'tag','legend');
set(lh,'location','southoutside');
haxes = findall(gcf,'type','axes');
h_axLabels = get(haxes,{'XLabel' 'YLabel'});

% --- Executes on button press in bPlotComparison.
function bPlotComparison_Callback(hObject, eventdata, handles)
% hObject    handle to bPlotComparison (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
figure; imshow(getimage(handles.axesComparison));
truesize(gcf, [params.DisplaySize params.DisplaySize]);
colorbar(gca);

% --- Executes on button press in bPlotForwardProj.
function bPlotForwardProj_Callback(hObject, eventdata, handles)
% hObject    handle to bPlotForwardProj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
h = findobj(handles.axesForward,'Type','line');
x = get(h,'Xdata');
y = get(h,'Ydata');
figure; plot(x,y);

% --- Executes on button press in bPlotBackwardProj.
function bPlotBackwardProj_Callback(hObject, eventdata, handles)
% hObject    handle to bPlotBackwardProj (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
figure; imshow(getimage(handles.axesBackward));
truesize(gcf, [params.DisplaySize params.DisplaySize]);
colorbar(gca);

% --- Executes on button press in bPlotImage.
function bPlotImage_Callback(hObject, eventdata, handles)
% hObject    handle to bPlotImage (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
figure; imshow(getimage(handles.axesImage));
truesize(gcf, [params.DisplaySize params.DisplaySize]);
colorbar(gca);


% --- Executes on button press in pbRun.
function pbRun_Callback(hObject, eventdata, handles)
% hObject    handle to pbRun (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
global resultsForward;
global resultsBackward;
global resultsART;
global resultsSIRT;
global resultsSART;
global resultsMART;

% Clear the previous results
cla(handles.axesForward);
cla(handles.axesBackward);
cla(handles.axesComparison);
% Initialize the parameters according to the user interface inputs
params = Initialize(handles);
% Run forward projection
tic;
resultsForward = Forward(params, handles);
% Run backward projection
switch(params.ProjType)
    case 1
        resultsBackward = Backward(resultsForward, params, handles);
    case 2
        resultsBackward = Backward(resultsForward, params, handles);
    case 3
        resultsBackward = Backward(resultsForward, params, handles);
    case 4
        resultsART = ART(resultsForward, params, handles);
    case 5
        resultsSIRT = SIRT(resultsForward, params, handles);
    case 6
        resultsSART = SART(resultsForward, params, handles);
    case 7
        resultsMART = M_ART(resultsForward, params, handles);
end
% Show the results
ShowResults(resultsForward, resultsBackward, resultsART, resultsSIRT, resultsSART, resultsMART, params, handles);
toc;


% --- Executes on button press in bTest.
function bTest_Callback(hObject, eventdata, handles)
% hObject    handle to bTest (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global params;
% global resultsForward;
% global resultsBackward;
% global resultsART;
% global resultsSIRT;
% global resultsSART;

% Clear the previous results
cla(handles.axesForward);
cla(handles.axesBackward);
cla(handles.axesComparison);
cla(handles.axesTestResults);

xAxes = [1];
idx = [1,3,5,7,10];
% xAxes = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30];
yAxes = zeros(1, length(xAxes));
count = 0;

% params = Initialize(handles);    
% resultsForward = Forward(params, handles);

for i = 1:length(xAxes)
    count = count + 1;
%     set(handles.tbImageSize, 'String', num2str(xAxes(i)));
%     set(handles.tbDistance, 'String', num2str(xAxes(i)));
%     set(handles.tbDetectorNum, 'String', num2str(xAxes(i)));
%     set(handles.tbProjAngleStep1, 'String', num2str(xAxes(i)));
%     set(handles.tbIterationNumber, 'String', num2str(xAxes(i)));
    params = Initialize(handles);
    resultsForward = Forward(params, handles);
    % Run backward projection
    resultsBackward(i) = Backward(resultsForward, params, handles);
    yAxes(1,count) = resultsBackward(i).ssimIndexNone;   
    yAxes(2,count) = resultsBackward(i).ssimIndexRamp;
    yAxes(3,count) = resultsBackward(i).ssimIndexHamm; 
    resultsART(i) = ART(resultsForward, params, handles);
    yAxes(4,count) = resultsART(i).ssimIndex;  
    resultsSIRT(i) = SIRT(resultsForward, params, handles);
    yAxes(5,count) = resultsSIRT(i).ssimIndex;  
    resultsSART(i) = SART(resultsForward, params, handles);
    yAxes(6,count) = resultsSART(i).ssimIndex; 
    
    resultsMART(i) = M_ART(resultsForward, params, handles);
    yAxes(6,count) = resultsMART(i).ssimIndex; 
end

[row, col] = find(isnan(yAxes));
for i = 1:length(col)
    if(col(i) == 1)
        yAxes(row(i), col(i)) = yAxes(row(i), col(i)+1);
    else(col(i) == length(col))
        yAxes(row(i), col(i)) = yAxes(row(i), col(i)-1);
    end
end

xStr = 'Detector Number';

% Plot ART, SIRT, SART and All(2 plots)
% figure;
% subplot(1,2,1), plot(xAxes, yAxes(4:6,:));
% title({'Results for ART,SIRT and SART'}); colorbar(gca);
% legend('ART', 'SIRT', 'SART');
% lh=findall(gcf,'tag','legend');
% set(lh,'location','southoutside');
% ylabel('Correlation'); xlabel(xStr);
% subplot(1,2,2), plot(xAxes, yAxes);
% title({'Results for Bakcprojection(NoFilter), Bakcprojection(Ramp)', 'Backward(Hamming), ART,SIRT and SART'}); colorbar(gca);
% legend('Backward(NoFilter)', 'Backward(Ramp)', 'Backward(Hamming)', 'ART', 'SIRT', 'SART');
% lh=findall(gcf,'tag','legend');
% set(lh,'location','southoutside');
% ylabel('Correlation'); xlabel(xStr);

% Plot ART,SIRT and SART only
% % figure; plot(xAxes, yAxes(4:6,:));
% % title({'Results for ART,SIRT and SART'}); colorbar(gca);
% % legend('ART', 'SIRT', 'SART');
% % lh=findall(gcf,'tag','legend');
% % set(lh,'location','southoutside');
% % ylabel('Correlation'); xlabel('Iteration Number');

% % Show ART, SIRT and SART images
% figure;
% for i = 1:3
%     subplot(3,length(idx)+1,1+((i-1)*(length(idx)+1))), imshow(params.Image);
%     title('Original image'); colorbar(gca);
% end
% for i = 1:length(idx)
%     subplot(3,length(idx)+1,i+(0*(length(idx)+1))+1), imshow(resultsART(idx(i)).Projections);
%     title(sprintf('ART, %s: %d', xStr, xAxes(idx(i)))); colorbar(gca);
%     subplot(3,length(idx)+1,i+(1*(length(idx)+1))+1), imshow(resultsSIRT(idx(i)).Projections);
%     title(sprintf('SIRT, %s: %d', xStr, xAxes(idx(i)))); colorbar(gca);
%     subplot(3,length(idx)+1,i+(2*(length(idx)+1))+1), imshow(resultsSART(idx(i)).Projections);
%     title(sprintf('SART, %s: %d', xStr, xAxes(idx(i)))); colorbar(gca);
% %     subplot(4,length(idx)+1,i+(4*(length(idx)+1))+1), imshow(resultsMART(idx(i)).Projections);
% %     title(sprintf('M-ART, %s: %d', xStr, xAxes(idx(i)))); colorbar(gca);
% end

% % Show All images
% figure;
% for i = 1:5
%     subplot(5,length(idx)+1,1+((i-1)*(length(idx)+1))), imshow(params.Image);
%     title('Original image'); colorbar(gca);
% end
% for i = 1:length(idx)
%     subplot(5,length(idx)+1,i+(0*(length(idx)+1))+1), imshow(resultsBackward(idx(i)).ProjectionsNone);
%     title(sprintf('BackProj(NoFilter), %s: %d', xStr, xAxes(idx(i)))); colorbar(gca);
%     subplot(5,length(idx)+1,i+(1*(length(idx)+1))+1), imshow(resultsBackward(idx(i)).ProjectionsHamm);
%     title(sprintf('BackProj(Filtered), %s: %d', xStr, xAxes(idx(i)))); colorbar(gca);
%     subplot(5,length(idx)+1,i+(2*(length(idx)+1))+1), imshow(resultsART(idx(i)).Projections);
%     title(sprintf('ART, %s: %d', xStr, xAxes(idx(i)))); colorbar(gca);
%     subplot(5,length(idx)+1,i+(3*(length(idx)+1))+1), imshow(resultsSIRT(idx(i)).Projections);
%     title(sprintf('SIRT, %s: %d', xStr, xAxes(idx(i)))); colorbar(gca);
%     subplot(5,length(idx)+1,i+(4*(length(idx)+1))+1), imshow(resultsSART(idx(i)).Projections);
%     title(sprintf('SART, %s: %d', xStr, xAxes(idx(i)))); colorbar(gca);
% end

% figure;
% subplot(2,4,1), imshow(params.Image);
% title('Original image'); colorbar(gca);
% subplot(2,4,2), imshow(resultsBackward(1).ProjectionsNone);
% title(sprintf('BackProj(NoFilter), %s: %d', xStr, xAxes(1))); colorbar(gca);
% subplot(2,4,3), imshow(resultsBackward(1).ProjectionsHamm);
% title(sprintf('BackProj(Filtered), %s: %d', xStr, xAxes(1))); colorbar(gca);
% subplot(2,4,5), imshow(resultsART(1).Projections);
% title(sprintf('ART, %s: %d', xStr, xAxes(1))); colorbar(gca);
% subplot(2,4,6), imshow(resultsSIRT(1).Projections);
% title(sprintf('SIRT, %s: %d', xStr, xAxes(1))); colorbar(gca);
% subplot(2,4,7), imshow(resultsSART(1).Projections);
% title(sprintf('SART, %s: %d', xStr, xAxes(1))); colorbar(gca);
% subplot(2,4,8), imshow(resultsMART(1).Projections);
% title(sprintf('M-ART, %s: %d', xStr, xAxes(1))); colorbar(gca);

figure;
subplot(1,3,1), imshow(params.Image);
title('Original image'); colorbar(gca);
subplot(1,3,2), imshow(resultsART(1).Projections);
title(sprintf('ART')); colorbar(gca);
subplot(1,3,3), imshow(resultsMART(1).Projections);
title(sprintf('M-ART')); colorbar(gca);
