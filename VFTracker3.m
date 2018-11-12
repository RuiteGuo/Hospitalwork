function varargout = VFTracker3(varargin)
% VFTRACKER3 MATLAB code for VFTracker3.fig
% C:/Users/pouri/OneDrive/Documents/MCG/research/MATLAB/Tracker/DRG2017

%      VFTRACKER3, by itself, creates a new VFTRACKER3 or raises the existing
%      singleton*.
%
%      H = VFTRACKER3 returns the handle to a new VFTRACKER3 or the handle to
%      the existing singleton*.
%
%      VFTRACKER3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VFTRACKER3.M with the given input arguments.
%
%      VFTRACKER3('Property','Value',...) creates a new VFTRACKER3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VFTracker3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VFTracker3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VFTracker3

% Last Modified by GUIDE v2.5 11-Nov-2018 23:12:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VFTracker3_OpeningFcn, ...
                   'gui_OutputFcn',  @VFTracker3_OutputFcn, ...
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


% --- Executes just before VFTracker3 is made visible.
function VFTracker3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VFTracker3 (see VARARGIN)

% Choose default command line output for VFTracker3
handles.output = hObject;

%setting theme of application
%  set(0,'defaultUicontrolBackgroundColor',[.212 .212 .212]);
 set(0,'defaultUicontrolBackgroundColor',[.94 .94 .94]);
 set(0,'defaultUicontrolForegroundColor',[0 0 0]);
% set(hObject,'Color', [.212 .212 .212]);


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VFTracker3 wait for user response (see UIRESUME)
% uiwait(handles.appFigure);

%Call the initialization function
Initialize(handles);


% --- Outputs from this function are returned to the command line.
function varargout = VFTracker3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(gcf, 'units','normalized','outerposition',[0 0 1 1]);

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function frameScrubber_Callback(hObject, eventdata, handles)
% hObject    handle to frameScrubber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function frameScrubber_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frameScrubber (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if ~isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function modeDetermination(handles)
    set(handles.uipanel37,'visible','on');
    


%Called once at the start of the app
function Initialize(handles)

%     clc;



pointerHotSpot = [8 8];
pointerShape = [ ...
            NaN NaN NaN NaN NaN   1   2 NaN   2   1 NaN NaN NaN NaN NaN NaN
            NaN NaN NaN NaN NaN   1   2 NaN   2   1 NaN NaN NaN NaN NaN NaN
            NaN NaN NaN NaN NaN   1   2 NaN   2   1 NaN NaN NaN NaN NaN NaN
            NaN NaN NaN NaN NaN   1   2 NaN   2   1 NaN NaN NaN NaN NaN NaN
            NaN NaN NaN NaN NaN   1   2 NaN   2   1 NaN NaN NaN NaN NaN NaN
              1   1   1   1   1   1   2 NaN   2   1   1   1   1   1   1   1
              2   2   2   2   2   2   2 NaN   2   2   2   2   2   2   2   2
            NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN
              2   2   2   2   2   2   2 NaN   2   2   2   2   2   2   2   2
              1   1   1   1   1   1   2 NaN   2   1   1   1   1   1   1   1
            NaN NaN NaN NaN NaN   1   2 NaN   2   1 NaN NaN NaN NaN NaN NaN
            NaN NaN NaN NaN NaN   1   2 NaN   2   1 NaN NaN NaN NaN NaN NaN
            NaN NaN NaN NaN NaN   1   2 NaN   2   1 NaN NaN NaN NaN NaN NaN
            NaN NaN NaN NaN NaN   1   2 NaN   2   1 NaN NaN NaN NaN NaN NaN
            NaN NaN NaN NaN NaN   1   2 NaN   2   1 NaN NaN NaN NaN NaN NaN
            NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN];


        set(handles.appFigure, 'PointerShapeCData', pointerShape);
        set(handles.appFigure, 'PointerShapeHotSpot', pointerHotSpot);

    [fileName, pathName] = uigetfile({'*.mp4;*.mov;*.avi;*.flv;*.wmv',...
                                      'Video Files (*.mp4,*.mov,*.avi,*.flv,*.wmv)';...
                                      '*.*', 'All Files (*.*)'});
    
    fullFileName = strcat(pathName, fileName);
    
    %store file name and path for use in kinematicsbutton
    setappdata(handles.kinematicsButton,'fullFileName',fullFileName)
    
    %display file name
    handles.text11.String = fileName;
    
    %adjust filename font until entire file name fits on screen.
    for fontSize = [22,20,18,16,14,12,10,9,8,7,6,5,4]
        set(handles.text11,'FontSize',fontSize)
        titleExtent = get(handles.text11,'Extent');
        titleSize = handles.text11.Position;
        titleWidth = titleSize(3);
        if titleExtent(3) < titleWidth
            break;
        end
    end
    
    uicontrol(handles.frameScrubber);
    
    %%% Uncomment to load a file direclty without the file chooser:
    %fullFileName = 'C:\Users\johndoe\Desktop\ThirdRevision\testvideo.avi';
    %fileName = 'testvideo.avi';
    %pathName = 'C:\Users\johndoe\Desktop\ThirdRevision\';
    
    
    clear('globalStudyInfo');
    clear('FrameErrorQueue');
    globalStudyInfo = Data.GlobalStudyInfo;
    FrameErrorQueue = Data.FrameErrorQueue;
    setappdata(handles.appFigure, 'FrameErrorQueue', FrameErrorQueue);
    
    
  
    
    display '===== clear?? ======';
    display(globalStudyInfo.BT);
    display(globalStudyInfo.OR);
    
    %globalStudyInfo.fullFileName = fullFileName;
    
    vfVideoStructure = Data.VFVideoStructure(fullFileName);
    

    studyCoordinates = Data.StudyCoordinates(vfVideoStructure);
    globalStudyInfo.studyCoordinates = studyCoordinates;
    globalStudyInfo.vfVideoStructure = vfVideoStructure;
%     globalStudyInfo.pas_coordinates = {0,0,0};
  
%add to set 
  
  subswallow1TextSet = globalStudyInfo.subswallow1TextSet;
  subswallow2TextSet = globalStudyInfo.subswallow1TextSet;
  subswallow3TextSet = globalStudyInfo.subswallow1TextSet;
  subswallow1TextSet = [subswallow1TextSet,handles.text160,handles.text163,handles.text166,handles.text169,handles.text208,...
      handles.text172,handles.text175,handles.text178,handles.text181,handles.text184,handles.text187,handles.text190,handles.text193,...
      handles.text196,handles.text199,handles.text202,handles.text205,...
      handles.BPM_FRAME_text,handles.text61,handles.text62,...
      handles.text63,handles.text64,handles.text65,...
      handles.ues_opening_text,handles.ues_closure_text,handles.text68,...
      handles.text70,handles.text66,handles.lvc_offset_text,...
      handles.text69,handles.text71,handles.text72,handles.text224];
  
  subswallow2TextSet = [subswallow2TextSet,handles.text161,handles.text164,...
      handles.text167,handles.text170,handles.text209,...
      handles.text173,handles.text176,handles.text179,handles.text182,...
      handles.text185,handles.text188,handles.text191,handles.text194,...
      handles.text197,handles.text200,handles.text203,handles.text206,...
      handles.text90,handles.text92,handles.text94,...
      handles.text97,handles.text98,handles.text102,...
      handles.text104,handles.text106,handles.text108,...
      handles.text110,handles.text112,handles.text114,...
      handles.text217,handles.text155,handles.text159,handles.text225];
  
  
  subswallow3TextSet = [subswallow3TextSet,handles.text162,handles.text165,handles.text168,handles.text171,handles.text210,...
      handles.text174,handles.text177,handles.text180,handles.text183,...
      handles.text186,handles.text189,handles.text192,handles.text195,...
      handles.text198,handles.text201,handles.text204,handles.text207,...
      handles.text91,handles.text93,handles.text95,handles.text96,...
      handles.text99,handles.text100,...
      handles.text103,handles.text105,handles.text107,...
      handles.text111,handles.text113,handles.text115,...
      handles.text218,handles.text156,handles.text158,handles.text226];
    a = "display information down here ===="
    size(subswallow1TextSet)
    size(subswallow2TextSet)
    size(subswallow3TextSet)
  threeDTextSet=[subswallow1TextSet;subswallow2TextSet;subswallow3TextSet];
  
  globalStudyInfo.subswallow1TextSet=subswallow1TextSet;
globalStudyInfo.subswallow2TextSet=subswallow2TextSet;
globalStudyInfo.subswallow3TextSet=subswallow3TextSet;
globalStudyInfo.subswallow3dTextSet=threeDTextSet;

        %initialize propertyname and value mapping
       % valueSet = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32];
     %   keySet = {'Lip_C','HP','BP','BT','OR','IPS','SPE','LE','HM','EM','LC','PSW','PC','PESO','TBR','PR','EC','ramus_mandible','oneHyoid_Frame','Bl_1hyoid','Bl_lva','lva_Frame'};
    
      modeDetermination(handles);
      textCallBack='Debug, reach here?'

    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
    textCallBack2='Debug, reach here2?'
    
    %Add a listener to listen to the value property of the frameScrubber to
    %update the frameNumberIndicator
    addlistener(handles.frameScrubber,'Value','PostSet',@(hFigure, eventdata) frameNumberListener(handles.appFigure, eventdata));

    %Add the handler for the frame scrubber
    addlistener(handles.frameScrubber,'ContinuousValueChange', ...
                                      @(hFigure,eventdata) slider1ContValCallback(...
                                        handles.appFigure,eventdata));
        
    
    
    %Initialize the frame scrubber control
    set(handles.frameScrubber, 'Min', 1);
    set(handles.frameScrubber, 'Max', vfVideoStructure.numFrames);
    set(handles.frameScrubber, 'SliderStep', [inv(vfVideoStructure.numFrames - 1)  inv(vfVideoStructure.numFrames - 1)]);
    set(handles.frameScrubber, 'Value', 1);
    
    
    %Set up the frame viewer control
    image(zeros(vfVideoStructure.resolution, 'double'), 'Parent', handles.frameViewer, 'HitTest', 'off');
    set(handles.frameViewer, 'XLim', [0 vfVideoStructure.resolution(2)]);
    set(handles.frameViewer, 'YLim', [0 vfVideoStructure.resolution(1)]);
    
    %Correct aspect ratio
    set(handles.frameViewer, 'DataAspectRatio', [1 1 1]);
    set(handles.frameViewer, 'PlotBoxAspectRatio', [2 2 2]);


    %Set up the handles.landmarksListBox
    [m, s] = enumeration('Data.JoveLandmarks');
    set(handles.landmarksListBox, 'String', s);
    
    %Initialize the noiseFilterLevelIndicator
    updateNoiseFilterLevelIndicator(handles);
    
    %Initialize the gammaAdjustLevelIndicator
    updateGammaAdjustLevelIndicator(handles);
    
    
    %render first
     %Render the first frame
    Render(handles);
    
%Checking if a results file exists
    [pathStr, name, ext] = fileparts(strcat(pathName, fileName));
    expectedFullExcelFileName = fullfile(pathStr, strcat(name, '.txt'));
    globalStudyInfo.fileName=name;
    
    
    
 
      disp('spin lock');
      setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
      waitfor(handles.uipanel37,'visible','off');
      globalStudyInfo=getappdata(handles.appFigure, 'globalStudyInfo');
     %spin lock, spin 
 
 
  
disp('out of spin lock');
disp(globalStudyInfo.mode);
    
    if (globalStudyInfo.mode==0&&exist(expectedFullExcelFileName, 'file'))
        Utilities.CustomPrinters.printInfo('Previously saved annotation results exist. Loading...');
        %Read the table
        inputTable = readtable(expectedFullExcelFileName, 'Delimiter', '\t');
        inputDataArray = table2array(inputTable(:, 2:end));
        
        if exist(fullfile(pathStr,[name, '_morphoj_.txt']),'file')
            %loading frame information for push buttons.
            morphoJTable = readtable(fullfile(pathStr,[name, '_morphoj_.txt']),'Delimiter','\t', 'ReadVariableNames',false);
            morphoJTable = table2cell(morphoJTable);
            
            %skip this step if no push button information is found, as in
            %the case of the old tracker tool's morphoJ files.
            if ~strcmpi(morphoJTable{1,1},'FrameNumber')
                
                %this for loop reads the first two rows of the morphoJ file
                %and loads the variables into globalStudyInfo. Each
                %variable is named based on the first row of the morphoJ
                %file and each variable's value is based on the second row
                %of the morphoJ file. These values are then loaded into the 
                % appropriate text boxes. The exception is the si point values
                %which have to be loaded separately
                calibration_points = struct;
                for j = 1:length(morphoJTable(1,:))
                    if strcmp(morphoJTable{1,j},'si_point1_x') || strcmp(morphoJTable{1,j},'si_point1_y') || ...
                            strcmp(morphoJTable{1,j},'si_point2_x') || strcmp(morphoJTable{1,j},'si_point2_y')
                        
                        calibration_points.(morphoJTable{1,j}) = str2double(morphoJTable{2,j});
                        if isnan(calibration_points.(morphoJTable{1,j}))
                           calibration_points.(morphoJTable{1,j}) = [];
                        end
                    elseif strcmp(morphoJTable{1,j},'point1_x') || strcmp(morphoJTable{1,j},'point1_y') || ...
                           strcmp(morphoJTable{1,j},'point2_x') || strcmp(morphoJTable{1,j},'point2_y')
                        
                        calibration_points.(strcat('si_', morphoJTable{1,j})) = str2double(morphoJTable{2,j});
                        if isnan(calibration_points.(strcat('si_', morphoJTable{1,j})))
                           calibration_points.(strcat('si_', morphoJTable{1,j})) = [];
                        end
                        
                    %converting number from morphoJ into an array for
                    %pas_classifiers
                    elseif strcmp(morphoJTable{1,j},'pas_classifiers')
                        globalStudyInfo.(morphoJTable{1,j}) = ...
                            [floor(str2double(morphoJTable{2,j}) / 100), ...
                            floor(mod(str2double(morphoJTable{2,j}),100) / 10) , ...
                            mod(str2double(morphoJTable{2,j}),10)];
                        
                        if(globalStudyInfo.pas_classifiers(1) == 2)
                            set(handles.beforePAS, 'Value', 1);
                        end
                        if(globalStudyInfo.pas_classifiers(2) == 2)
                            set(handles.duringPAS, 'Value', 1);
                        end
                        if(globalStudyInfo.pas_classifiers(3) == 2)
                            set(handles.afterPAS, 'Value', 1);
                        end
                        
                    elseif strcmp(morphoJTable{1,j},'frameRate') || strcmp(morphoJTable{1,j},'')
                        %if frameRate is stored, we do not want to load it.
                        %The value will be extracted from video file later.
                        %otherwise, if the value is blank, it means there
                        %are extraneous columns in the _morphoJ file,
                        %ignore those too.
                    elseif isprop(globalStudyInfo,morphoJTable{1,j})
                        
                        disp(morphoJTable{1,j});
                        
                        globalStudyInfo.(morphoJTable{1,j}) = str2double(morphoJTable{2,j});
                        if isnan(globalStudyInfo.(morphoJTable{1,j}))
                           globalStudyInfo.(morphoJTable{1,j}) = [];
                        end
                        
                        if isfield(handles,[morphoJTable{1,j} '_text'])
                            set(handles.([morphoJTable{1,j} '_text']), 'String', globalStudyInfo.(morphoJTable{1,j}));
                        end
                        
                    else
                        Utilities.CustomPrinters.printError(sprintf('Error on reading "%s\" from _morphoJ_ file \n', morphoJTable{1,j}));
                        
                        disp(morphoJTable{1,j});
                        if strcmp('holdarea', morphoJTable{1,j})
                            continue;
                        end
                        error('Something went wrong with loading the _morphoJ_ file!')         
                    end
                    
                end
                
                globalStudyInfo.si_point1 = [calibration_points.si_point1_x,calibration_points.si_point1_y];
                globalStudyInfo.si_point2 = [calibration_points.si_point2_x,calibration_points.si_point2_y];

                if isempty(globalStudyInfo.si_point1) || isempty(globalStudyInfo.si_point2)
                    estSize = '';
                    set(handles.estSize, 'String', num2str(estSize));
                else
                    set(handles.si_point1_text, 'String', sprintf('%-.2f, \t %-.2f',globalStudyInfo.si_point1(1),globalStudyInfo.si_point1(2)));
                    set(handles.si_point2_text, 'String', sprintf('%-.2f, \t %-.2f',globalStudyInfo.si_point1(1),globalStudyInfo.si_point1(2)));
                
                    bothPoints = [globalStudyInfo.si_point1(1),globalStudyInfo.si_point1(2);globalStudyInfo.si_point2(1),globalStudyInfo.si_point2(2)];
                    bothPoints_dist = coordinates_dist(bothPoints);

                    estSize = bothPoints_dist / globalStudyInfo.pixelspercm;
                    set(handles.estSize, 'String', num2str(estSize));
                end

            end
        end


        %set calibration button font to red if calibration is not found, to
        %green if calibration is found
        if ~isempty(globalStudyInfo.pixelspercm) && globalStudyInfo.pixelspercm > 0
            handles.unitCalibrationButton.ForegroundColor = [0 1 0];
        else
            handles.unitCalibrationButton.ForegroundColor = [1 0 0];
        end
        
        [a, b] = enumeration('Data.JoveLandmarks');
        numLandmarks = numel(b);
        numFrames = size(inputDataArray, 1);
        for landmarkIndex = 0:numLandmarks-1
            for frameIndex = 1:numFrames
                currentCoordinate = [inputDataArray(frameIndex, 2*landmarkIndex + 1) inputDataArray(frameIndex, 2*landmarkIndex + 2) ] ;
                globalStudyInfo.studyCoordinates.setCoordinate(frameIndex, Data.JoveLandmarks(landmarkIndex+1), currentCoordinate);
            end
        end
        Utilities.CustomPrinters.printInfo('Done loading saved annotations');
    else
        Utilities.CustomPrinters.printInfo('No previously saved annotations exist');
    end

    
    
    %Check if a file with the tracking status of each coordinate for each
    %frame exists. if it does, load it and fill the
    %globalStudyInfo.studyCoordinates.trackingStatus cell array.
    expectedFullTrackingStatusFileName = fullfile(pathStr, strcat(name, '_tracking_status.mat'));
    if (globalStudyInfo.mode==0&&exist (expectedFullTrackingStatusFileName, 'file'))
       Utilities.CustomPrinters.printInfo('Tracking information exists for previous session. Loading...');
       loadedMatFile = load(expectedFullTrackingStatusFileName);
       globalStudyInfo.studyCoordinates.trackedStatus = loadedMatFile.('savedTrackedStatus');
       Utilities.CustomPrinters.printInfo('Done loading previous session''s tracking information');
    else
        Utilities.CustomPrinters.printInfo('No previous session''s tracking information exists');
    end
    
    
    %Update the GUI elements that display the parameters for the Harris
    %corner detector and the KLT tracker
    set(handles.harrisCornerDetectorMinQualityEditBox, 'String', num2str(globalStudyInfo.harrisFeatureDetectorParameters.minQuality));
    set(handles.harrisCornerDetectorFilterSize, 'String', num2str(globalStudyInfo.harrisFeatureDetectorParameters.filterSize));
    set(handles.harrisCornerDetectorSearchRadiusEditBox, 'String', num2str(globalStudyInfo.harrisFeatureDetectorParameters.searchRadius));
    set(handles.numPyramidLevelsEditBox, 'String', num2str(globalStudyInfo.kltTrackerParameters.numPyramidLevels));
    set(handles.blockSizeEditBox, 'String', num2str(globalStudyInfo.kltTrackerParameters.blockSize));
   
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
    
    %Render the first frame
    Render(handles);
    
    %%%%%%%%%%
    
%The render function    
function Render(handles, varargin)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
    currentlyTrackedLandmark = globalStudyInfo.currentlyTrackedLandmark;
    
    %get the current value of the frameScrubber control
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    
    %Get the handle to the image object under the Axes object that will be
    %used to dispalay the frame
    imageViewerHandle = get(handles.frameViewer, 'Children');
    
    
    %Get the frame data from the vfvideostructure
    currentFrame = globalStudyInfo.vfVideoStructure.videoFrames{currentFrameIndex};
    
    %Apply preprocessing on the frame
    currentFrame = preprocessImage(handles, currentFrame);
    
    %Draw the landmark annotations
    numLandmarks = Data.JoveLandmarks.numLandmarks;
    [m, s] = enumeration('Data.JoveLandmarks');
    
    for i = 1:numLandmarks
        currentCoordinate = globalStudyInfo.studyCoordinates.getCoordinate(currentFrameIndex, i);
        if (~isempty(currentCoordinate))
            if (uint8(currentlyTrackedLandmark) == i)
                markerColour = 'green';
            else
                markerColour = 'red';
            end
            currentFrame = insertMarker(currentFrame, currentCoordinate, 'color', markerColour);
        end
    end
    
    
    %DIsplay the frame
    set(imageViewerHandle, 'CData', currentFrame);

    
 %This function implements the callback that is called everytime the frame
 %scrubber slider is moved. This is undocumented MATLAB stuff. It does not
 %work when the gui that is using this is packaged as a stand-alone using
 %MATLAB Compiler
 %There seems to be no way around this problem, so packaged apps will lose
 %the frame scrubber likeness.
 function slider1ContValCallback(hFigure,eventdata)
    % test it out - get the handles object and display the current value
    handles = guidata(hFigure);
    
        
    %Render(handles)
    frameNumberListener(handles.appFigure)
  

% --- Executes on selection change in landmarksListBox.
function landmarksListBox_Callback(hObject, eventdata, handles)
% hObject    handle to landmarksListBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns landmarksListBox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from landmarksListBox
   
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    listBoxSelection = get(handles.landmarksListBox, 'Value');
    listBoxSelection = listBoxSelection(1);
    globalStudyInfo.currentlyTrackedLandmark = Data.JoveLandmarks(listBoxSelection);
    Utilities.CustomPrinters.printInfo(sprintf('Current landmark is %s', char(globalStudyInfo.currentlyTrackedLandmark)));
    uicontrol(handles.frameScrubber); %prevents click off problem
    Render(handles);

% --- Executes during object creation, after setting all properties.
function landmarksListBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to landmarksListBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function dist = coordinates_dist(points)
    dist = sqrt((points(1,1) - points(2,1))^2 + (points(1,2) - points(2,2))^2);

%The function to do preprocessing of the image before it is rendered or
%passed onto the point tracker
function result = preprocessImage(handles, img)
    %Convert to grayscale if it is RGB and keep track of whether it was
    %RGB or grayscale so it can be reconverted at the end
    if (size(img, 3) == 3)
        wasRGB = true;
        img = rgb2gray(img);
    else
        wasRGB = false;
    end
    
    
    %Get the current filter window size
    filterWindowSize = floor(get(handles.noiseFilterLevelSlider, 'Value'));
    if (filterWindowSize == 0)
        %Do no filteirng
    else
       %Do some filtering
       filterWindowWidth = 3 + 2 * filterWindowSize;
       img = wiener2(img, [filterWindowWidth filterWindowWidth]); 
    end
    
    
    %Do some gamma adjjustment
    gammaAdjustLevel = get(handles.gammaAdjustSlider, 'Value');
    img = imadjust(img, [], [], gammaAdjustLevel);
    
    
    
    %if the original image was RGB convert it back to RGB
    if (wasRGB == true)
        result = repmat(img, [1 1 3]);
    else
        result = img;
    end


% --- Executes on slider movement.
function noiseFilterLevelSlider_Callback(hObject, eventdata, handles)
% hObject    handle to noiseFilterLevelSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
updateNoiseFilterLevelIndicator(handles);
Render(handles);


% --- Executes during object creation, after setting all properties.
function noiseFilterLevelSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noiseFilterLevelSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if ~isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on slider movement.
function gammaAdjustSlider_Callback(hObject, eventdata, handles)
% hObject    handle to gammaAdjustSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    updateGammaAdjustLevelIndicator(handles);
    Render(handles);
    
    
% --- Executes during object creation, after setting all properties.
function gammaAdjustSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gammaAdjustSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if ~isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function updateNoiseFilterLevelIndicator(handles)
    set(handles.noiseFilterLevelIndicator, 'String', sprintf('Noise filter Strength: %d', floor(get(handles.noiseFilterLevelSlider, 'Value'))));
        
function updateGammaAdjustLevelIndicator(handles)
    set(handles.gammaAdjustLevelIndicator, 'String', sprintf('Gamma: %.2f', get(handles.gammaAdjustSlider, 'Value')));
        


% --- Executes during object creation, after setting all properties.
function noiseFilterLevelIndicator_CreateFcn(hObject, eventdata, handles)
% hObject    handle to noiseFilterLevelIndicator (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes on key press with focus on appFigure and none of its controls.
% This is not being used.
function appFigure_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to appFigure (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
% 	Key: name of the key that was pressed, in lower case
% 	Character: character interpretation of the key(s) that was pressed
% 	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

appFigure_WindowKeyPressFcn(hObject, eventdata, handles);



%the function that does the tracking
function performTracking(handles)
    
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
    numFrames = globalStudyInfo.vfVideoStructure.numFrames;
    currentlyTrackedLandmark = globalStudyInfo.currentlyTrackedLandmark;
%    disp(currentlyTrackedLandmark)
    
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    currentFrame = globalStudyInfo.vfVideoStructure.videoFrames{currentFrameIndex};
        
    %Do image preprocessing on the current frame
    currentFrame = preprocessImage(handles, currentFrame);
    currentFrame = rgb2gray(currentFrame);     
    
    
    cornersFound = false;
    while(cornersFound == false)
        
        [x, y] = getpts(handles.frameViewer);
    
        chosenPointX = floor(x(1));
        chosenPointY = floor(y(1));

        
        cornerSearchRadius = globalStudyInfo.harrisFeatureDetectorParameters.searchRadius;
        harrisFeatureDetectorMinQuality = globalStudyInfo.harrisFeatureDetectorParameters.minQuality;
        harrisFeatureDetectorFilterSize = globalStudyInfo.harrisFeatureDetectorParameters.filterSize;
        %Utilities.CustomPrinters.printInfo(sprintf('About to call Harris Feature Detector with search radius = [%s], Min Quality = %s, Filter Size = %s', num2str(cornerSearchRadius ), num2str(harrisFeatureDetectorMinQuality), num2str(harrisFeatureDetectorFilterSize)));
        
        cornersDetected = detectHarrisFeatures(currentFrame, 'MinQuality', harrisFeatureDetectorMinQuality, 'ROI', [(chosenPointX - cornerSearchRadius) (chosenPointY - cornerSearchRadius) (2 * cornerSearchRadius + 1) (2 * cornerSearchRadius + 1)], 'FilterSize', harrisFeatureDetectorFilterSize);
        if (size(cornersDetected.Location, 1) == 0)
            cornersFound = false;
            Utilities.CustomPrinters.printWarning('No Harris corners detected. Increase search window or try a different spot');
%            disp('no corners detected');
            showFeedbackPopup(handles,'No corners detected',3);
        else
%            disp('corners detected');
            Utilities.CustomPrinters.printInfo('Harris corner detected');
            cornersFound = true;
            showFeedbackPopup(handles,'No corners detected',0);
        end
    end
    
    
    showFeedbackPopup(handles,'Tracking...',1);
    
    %By how much does the corner that is about to be tracked exceed the
    %point chosen by the user?
    cornerMinusChosenPointX = cornersDetected.Location(1, 1) - chosenPointX;
    cornerMinusChosenPointY = cornersDetected.Location(1, 2) - chosenPointY;
    
    
    %Store the detected corner into the coordinate structure
    globalStudyInfo.studyCoordinates.setCoordinate(currentFrameIndex, currentlyTrackedLandmark, [(cornersDetected.Location(1, 1) - cornerMinusChosenPointX) (cornersDetected.Location(1, 2) - cornerMinusChosenPointY)]);
    globalStudyInfo.studyCoordinates.setTrackedStatus(currentFrameIndex, currentlyTrackedLandmark, Data.TrackingType.Automatic);
    
    
    %Utilities.CustomPrinters.printInfo(sprintf('About to initiate KLT tracker with Block size = [%s], Number Pyramid Levels = %s, Max Iterations = %s', num2str(globalStudyInfo.kltTrackerParameters.blockSize), num2str(globalStudyInfo.kltTrackerParameters.numPyramidLevels), num2str(globalStudyInfo.kltTrackerParameters.maxIterations)));    
    v = vision.PointTracker('NumPyramidLevels', globalStudyInfo.kltTrackerParameters.numPyramidLevels, 'BlockSize', globalStudyInfo.kltTrackerParameters.blockSize, 'MaxIterations', globalStudyInfo.kltTrackerParameters.maxIterations);
    initialize(v, cornersDetected.Location(1, :), currentFrame);
     
     Utilities.CustomPrinters.printInfo('Hold on while tracking is being done....');
     while(currentFrameIndex < numFrames)
         nextFrame = globalStudyInfo.vfVideoStructure.videoFrames{currentFrameIndex + 1};
         nextFrame = preprocessImage(handles, nextFrame);
         nextFrame = rgb2gray(nextFrame);
         [trackedPoints, trackedPointsValidity] = step(v, nextFrame);
         if (trackedPointsValidity(1) == false)
            release(v);
            return;
         else
            currentFrameIndex = currentFrameIndex + 1;
            globalStudyInfo.studyCoordinates.setCoordinate(currentFrameIndex, currentlyTrackedLandmark, [(trackedPoints(1, 1) - cornerMinusChosenPointX) (trackedPoints(1, 2) - cornerMinusChosenPointY)]);
            globalStudyInfo.studyCoordinates.setTrackedStatus(currentFrameIndex, currentlyTrackedLandmark, Data.TrackingType.Automatic);
         end
     end
     Utilities.CustomPrinters.printInfo('Tracking is done');
     showFeedbackPopup(handles,'Tracking is done',2);
     Render(handles);
    

     
%this is the function to do manual annotation     
function performManualAnnotation(handles)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    
    numFrames = globalStudyInfo.vfVideoStructure.numFrames;
    
    currentlyTrackedLandmark = globalStudyInfo.currentlyTrackedLandmark;
    
    [x, y] = getpts(handles.frameViewer);
    
    %Record the location of the point into the recording structure
    globalStudyInfo.studyCoordinates.setCoordinate(currentFrameIndex, currentlyTrackedLandmark, [x(1) y(1)]);
    
    
    %Skip to the next frame
    if ~(currentFrameIndex == numFrames)
       set(handles.frameScrubber, 'Value', currentFrameIndex + 1); 
       slider1ContValCallback(handles.appFigure, [] );
    end
    

% --------------------------------------------------------------------
function trimVideoMenuButton_Callback(hObject, eventdata, handles)
% hObject    handle to trimVideoMenuButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%Used to update the frame number
function frameNumberListener(hFigure, eventdata)
     handles = guidata(hFigure);
     globalStudyInfo = getappdata(hFigure, 'globalStudyInfo');
     currentFrameNumber = floor(get(handles.frameScrubber, 'Value'));
     ssCount = globalStudyInfo.subSwallowCount;
     subswallowArray = globalStudyInfo.subswallowFrame;
     
     %only frame within the subswallow is labelable
     inValidRange = 0;
     if(globalStudyInfo.labelSubswallowProcess==0&&ssCount~=0) 
        for n=1:ssCount
            if(currentFrameNumber>=subswallowArray(n,1)&&currentFrameNumber<=subswallowArray(n,2))
                globalStudyInfo.currentSubswallowPointer=n;        
                setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
                changeCurrentWriteAbleText(globalStudyInfo);
                inValidRange=1;
                break;
            end
                
        end 
        if(inValidRange==0)
                disableAllWriteAbleText(globalStudyInfo);
                globalStudyInfo.currentSubswallowPointer=0;        
                setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
        end
     end
    
     
     totalFrames = globalStudyInfo.vfVideoStructure.numFrames;
     displayString = sprintf('%d / %d', currentFrameNumber, totalFrames);
     set(handles.frameNumberIndicator, 'String', displayString);
     Render(handles)


% --- Executes on mouse press over figure background.
function appFigure_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to appFigure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frameViewer_ButtonDownFcn(hObject, eventdata, handles)


% --- Executes on mouse press over axes background.
function frameViewer_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to frameViewer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function imageButtownDownFcn()
%    disp('called image button down callback')


% --------------------------------------------------------------------
function writeResultsButton_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to writeResultsButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
Utilities.ResultFileWriter(globalStudyInfo);


% --------------------------------------------------------------------
function reinitializeTool_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to reinitializeTool (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Initialize(handles)


% --- Executes on key press with focus on appFigure or any of its controls.
function appFigure_WindowKeyPressFcn(hObject, eventdata, handles)
% hObject    handle to appFigure (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
totalFrames = globalStudyInfo.vfVideoStructure.numFrames;

    
switch(lower(eventdata.Key))
    case 's'
        performTracking(handles);
    case 'q'
        close(handles.appFigure);
    case 'm'
        %performManualAnnotation(handles);
        x = [];
        y = [];
        done = false;
        currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
        
        numFrames = globalStudyInfo.vfVideoStructure.numFrames;
        
        while(currentFrameIndex <= numFrames && done == false)
            [x, y] = mygetpts();
            done = isempty([x y]);
            if (~done)
               currentlyTrackedLandmark = globalStudyInfo.currentlyTrackedLandmark;
               globalStudyInfo.studyCoordinates.setCoordinate(currentFrameIndex, currentlyTrackedLandmark, [x y]);
               globalStudyInfo.studyCoordinates.setTrackedStatus(currentFrameIndex, currentlyTrackedLandmark, Data.TrackingType.Manual);
            end
            
            if (currentFrameIndex < numFrames && ~done)
                currentFrameIndex = currentFrameIndex + 1;
            end
            
            
            set(handles.frameScrubber, 'Value', currentFrameIndex);
        end
    case 'rightarrow'
        %frameScrubber
        currentFrame = get(handles.frameScrubber, 'Value');
        
        if (currentFrame ~= totalFrames)
            currentFrame = currentFrame + 1;
        end

        set(handles.frameScrubber, 'Value', currentFrame);
        uicontrol(handles.frameScrubber);
    
    case 'leftarrow'
        %frameScrubber
        currentFrame = get(handles.frameScrubber, 'Value');
        
        if (currentFrame ~= 1)
            currentFrame = currentFrame - 1;
        end

        set(handles.frameScrubber, 'Value', currentFrame);          
        uicontrol(handles.frameScrubber);

%     %'i' for interpolation
%     case 'i'
%         userQuery = inputdlg('Enter start and end frame numbers');
%         userQuery = userQuery{1};
%         userQuery = str2num(userQuery);
%         startFrame = userQuery(1);
%         endFrame = userQuery(2);
%         Interpolater(handles, startFrame, endFrame);
    case 'escape'
        return;
end


% --------------------------------------------------------------------
function saveButton_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to saveButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
oldFeedbackLabelMessage = get(handles.feedbackLabel, 'String');
% set(handles.feedbackLabel, 'String', 'Saving...');
showFeedbackPopup(handles, 'Saving...',1);

drawnow()
Utilities.ResultFileWriter(globalStudyInfo);
showFeedbackPopup(handles, 'Saved', 2);


%allows you to display text to the screen
function showFeedbackPopup(handles, string, visibility)
    if (visibility == 1)
        set(handles.feedbackPanel, 'visible', 'on');
        set(handles.feedbackLabel, 'String', string);
    elseif (visibility == 0)
        set(handles.feedbackLabel, 'String', '');
        set(handles.feedbackPanel, 'visible', 'off');
    elseif (visibility == 2)
        set(handles.feedbackPanel, 'BackgroundColor', 'green');
        set(handles.feedbackLabel, 'BackgroundColor', 'green');
        set(handles.feedbackLabel, 'ForegroundColor', 'black');
        set(handles.feedbackPanel, 'visible', 'on');
        set(handles.feedbackLabel, 'String', string);
        pause(.5)
        set(handles.feedbackLabel, 'String', '');
        set(handles.feedbackPanel, 'visible', 'off');
        set(handles.feedbackPanel, 'BackgroundColor', 'red');
        set(handles.feedbackLabel, 'BackgroundColor', 'red');
        set(handles.feedbackLabel, 'ForegroundColor', 'white');
    elseif (visibility == 3)
        set(handles.feedbackPanel, 'BackgroundColor', 'yellow');
        set(handles.feedbackLabel, 'BackgroundColor', 'yellow');
        set(handles.feedbackLabel, 'ForegroundColor', 'black');
        set(handles.feedbackPanel, 'visible', 'on');
        set(handles.feedbackLabel, 'String', string);
        pause(.5)
        set(handles.feedbackLabel, 'String', '');
        set(handles.feedbackPanel, 'visible', 'off');
        set(handles.feedbackPanel, 'BackgroundColor', 'red');
        set(handles.feedbackLabel, 'BackgroundColor', 'red');
        set(handles.feedbackLabel, 'ForegroundColor', 'white');
    end
    
    
% --------------------------------------------------------------------
function WriteHighResVideo_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to WriteHighResVideo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%display "saving video" in top left corner
showFeedbackPopup(handles, 'Saving...',1);

drawnow()
    
VideoWriterCallback(handles, 'high');   

showFeedbackPopup(handles, 'Saved',2);
    
    
% --------------------------------------------------------------------
function CreateSlitImageMenuButton_Callback(hObject, eventdata, handles)
% hObject    handle to CreateSlitImageMenuButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    imageViewerHandle = get(handles.frameViewer, 'Children');
    currentLandmark = globalStudyInfo.currentlyTrackedLandmark;
    fprintf('\nThe current landmark is %s\n', char(currentLandmark));
    %Get the number of frames
    numberOfFrames = globalStudyInfo.vfVideoStructure.numFrames;
    fprintf('\nThe total number of frames in this VF is %d\n', numberOfFrames);
    
    %some constants, just constants for now. They will be variables later
    SLIT_HEIGHT_HW = 30;
    SLIT_WIDTH_HW = 30;
    SEPERATOR_WIDTH = 1;
    SEPERATOR_COLOUR = 'green';
    ABSENT_COLOUR = 'black';
    
    %Set up the matrix that will hold the frames
    slit_image = zeros(2 * SLIT_HEIGHT_HW + 1, 0, 3);
    
    %Go through the VF frames and start appending the slit images
    for i = 1:numberOfFrames
       currentLandmarkCoordinate = floor(globalStudyInfo.studyCoordinates.getCoordinate(i, currentLandmark));
    
        %Get the current frame data that was rendered
        currentFrame = get(imageViewerHandle, 'CData');
        xCoord = currentLandmarkCoordinate(2);
        yCoord = currentLandmarkCoordinate(1);
        
        fprintf('\nFrame: %d, x-coord: %d, y-coord: %d, x-dim: %d, y-dim: %d, z-dim: %d', i, currentLandmarkCoordinate(1), currentLandmarkCoordinate(2), size(currentFrame, 1), size(currentFrame, 2), size(currentFrame, 3))
        slitFrame = currentFrame(xCoord - SLIT_HEIGHT_HW : xCoord + SLIT_HEIGHT_HW, yCoord - SLIT_WIDTH_HW : yCoord + SLIT_WIDTH_HW, :);
        
        slit_image = horzcat(slit_image, slitFrame);
    end
    
    figure, imshow(slit_image)


% --------------------------------------------------------------------
function WriteLowResVideo_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to WriteLowResVideo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%display "saving video" in top left corner
showFeedbackPopup(handles, 'Saving...',1);
drawnow()
    
VideoWriterCallback(handles, 'low');

showFeedbackPopup(handles, 'Saved',2);
% disp('debug pitstop called');
% globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
% fullFileName = globalStudyInfo.vfVideoStructure.fileName;
% [pathstr, name, ext] = fileparts(fullFileName);
% trackingResultFullFileName = fullfile(pathstr, strcat(name, '_tracking_status.mat'));
% savedTrackedStatus = globalStudyInfo.studyCoordinates.trackedStatus;
% save(trackingResultFullFileName, 'savedTrackedStatus');



function numPyramidLevelsEditBox_Callback(hObject, eventdata, handles)
% hObject    handle to numPyramidLevelsEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of numPyramidLevelsEditBox as text
%        str2double(get(hObject,'String')) returns contents of numPyramidLevelsEditBox as a double
%disp('Num Pyramid levels text bos callback');

globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');

try
    value = uint8(floor(str2double(get(hObject, 'String'))));
    if (value < 1)
        throw(MException());
    end
catch
    Utilities.CustomPrinters.printError('Number of pyramid levels must be positive integer > 1. Setting to 3 (default)');
    value = 3;
end
set(hObject, 'String', value);

globalStudyInfo.kltTrackerParameters.numPyramidLevels = value;
setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes during object creation, after setting all properties.
function numPyramidLevelsEditBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numPyramidLevelsEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function blockSizeEditBox_Callback(hObject, eventdata, handles)
% hObject    handle to blockSizeEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of blockSizeEditBox as text
%        str2double(get(hObject,'String')) returns contents of blockSizeEditBox as a double
%disp('block size edit box callback called');
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');

value = get(hObject, 'String');   
try
    value = uint8(str2num(value));
    if ~(value >= 3 && mod(value, 2) == [1 1])
        disp('ERORR');
    end
catch
    
end

globalStudyInfo.kltTrackerParameters.blockSize = value;

setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);



% --- Executes during object creation, after setting all properties.
function blockSizeEditBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to blockSizeEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on scroll wheel click while the figure is in focus.
function appFigure_WindowScrollWheelFcn(hObject, eventdata, handles)
% hObject    handle to appFigure (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	VerticalScrollCount: signed integer indicating direction and number of clicks
%	VerticalScrollAmount: number of lines scrolled for each click
% handles    structure with handles and user data (see GUIDATA)
scrollDelta = eventdata.VerticalScrollCount;
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
totalFrames = globalStudyInfo.vfVideoStructure.numFrames;
%frameScrubber
currentFrame = get(handles.frameScrubber, 'Value');
if (scrollDelta > 0 && currentFrame ~= totalFrames)
    currentFrame = currentFrame + 1;
elseif (scrollDelta < 0 && currentFrame ~= 1)
    currentFrame = currentFrame - 1;
end

set(handles.frameScrubber, 'Value', currentFrame);


% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function appFigure_WindowButtonUpFcn(hObject, eventdata, handles)
% hObject    handle to appFigure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%disp('figure button up')
uicontrol(handles.frameScrubber);


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over landmarksListBox.
function landmarksListBox_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to landmarksListBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
figure(gca)
axes(handles.frameViewer);
uicontrol(handles.frameScrubber);   



function harrisCornerDetectorMinQualityEditBox_Callback(hObject, eventdata, handles)
% hObject    handle to harrisCornerDetectorMinQualityEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of harrisCornerDetectorMinQualityEditBox as text
%        str2double(get(hObject,'String')) returns contents of harrisCornerDetectorMinQualityEditBox as a double
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
value = str2double(get(hObject, 'String'));
globalStudyInfo.harrisFeatureDetectorParameters.minQuality = value;
setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes during object creation, after setting all properties.
function harrisCornerDetectorMinQualityEditBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to harrisCornerDetectorMinQualityEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function harrisCornerDetectorFilterSize_Callback(hObject, eventdata, handles)
% hObject    handle to harrisCornerDetectorFilterSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of harrisCornerDetectorFilterSize as text
%        str2double(get(hObject,'String')) returns contents of harrisCornerDetectorFilterSize as a double
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
value = str2double(get(hObject, 'String'));
globalStudyInfo.harrisFeatureDetectorParameters.filterSize = value;
setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes during object creation, after setting all properties.
function harrisCornerDetectorFilterSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to harrisCornerDetectorFilterSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


function harrisCornerDetectorSearchRadiusEditBox_Callback(hObject, eventdata, handles)
% hObject    handle to harrisCornerDetectorSearchRadiusEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of harrisCornerDetectorSearchRadiusEditBox as text
%        str2double(get(hObject,'String')) returns contents of harrisCornerDetectorSearchRadiusEditBox as a double
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
value = str2double(get(hObject, 'String'));
globalStudyInfo.harrisFeatureDetectorParameters.searchRadius = value;
setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

% --- Executes during object creation, after setting all properties.
function harrisCornerDetectorSearchRadiusEditBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to harrisCornerDetectorSearchRadiusEditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function VideoWriterCallback(handles, resolution)
    
  
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
numFrames = globalStudyInfo.vfVideoStructure.numFrames;

[pathstr, name, ext] = fileparts(globalStudyInfo.vfVideoStructure.fileName);

videoFileWriter = vision.VideoFileWriter();

if (strcmp(resolution, 'low'))
    videoFileName = fullfile(pathstr, strcat(name, '_video.mp4'));
    videoFileWriter.FileFormat = 'MPEG4';
else
    videoFileName = fullfile(pathstr, strcat(name, '_video.avi'));
end
videoFileWriter.Filename = videoFileName;
Utilities.CustomPrinters.printInfo(sprintf('Writing video as %s. Hold on...', videoFileName));

%Draw the landmark annotations
numLandmarks = Data.JoveLandmarks.numLandmarks;
[m, s] = enumeration('Data.JoveLandmarks');

for i = 1:numFrames
    %This works by running the framescrubber through all the notches,
    %reading the cdata, and writing it to the videofile writer

    %Get the frame data from the vfvideostructure
    currentFrame = globalStudyInfo.vfVideoStructure.videoFrames{i};

   for j = 1:numLandmarks
     currentCoordinate = globalStudyInfo.studyCoordinates.getCoordinate(i, j);
     if (~isempty(currentCoordinate))
         if (isempty(cell2mat(regexp(s(j), '_gt'))))
            landmarkColour = 'green';
         else
             landmarkColour = 'red';
         end
        currentFrame = insertMarker(currentFrame, currentCoordinate, 'color', landmarkColour);
     end
   end

   %Insert the frame number at the bottom right
   frameSize = size(currentFrame);
   AnchorPoint = 'LeftBottom';
   currentFrame = insertText(currentFrame, [1 frameSize(1)], sprintf('%d / %d', i, numFrames),'AnchorPoint', AnchorPoint);
   
   
   %Insert push button frames
   if i == globalStudyInfo.start_frame
       position_x = floor(frameSize(2)/4);
       position_y = frameSize(1);
       AnchorPoint = 'LeftBottom';
       currentFrame = insertText(currentFrame,[position_x position_y], 'Start Frame','AnchorPoint', AnchorPoint);
       
   elseif i == globalStudyInfo.end_frame
       position_x = floor(frameSize(2)/4);
       position_y = frameSize(1);
       AnchorPoint = 'LeftBottom';
       currentFrame = insertText(currentFrame,[position_x position_y], 'End Frame','AnchorPoint', AnchorPoint);
   end
   
   repeatCounter = 0;
   
   if i == globalStudyInfo.hold_position
       position_x = floor(frameSize(2)*3/4);
       position_y = frameSize(1);
       AnchorPoint = 'RightBottom';
       currentFrame = insertText(currentFrame,[position_x position_y], 'Hold Position', 'AnchorPoint', AnchorPoint);
       repeatCounter = repeatCounter + 1;
   end
       
   if i == globalStudyInfo.ramus_mandible
       frameSize = size(currentFrame);
       position_x = floor(frameSize(2)*3/4);
       position_y = frameSize(1);
       AnchorPoint = 'RightBottom';
       if repeatCounter == 1
           AnchorPoint = 'LeftBottom';
       end
       currentFrame = insertText(currentFrame,[position_x position_y], 'Ramus Mandible', 'AnchorPoint', AnchorPoint);
       repeatCounter = repeatCounter + 1;
   end
       
   if i == globalStudyInfo.oneHyoid_Frame
       position_x = floor(frameSize(2)*3/4);
       position_y = frameSize(1);
       AnchorPoint = 'RightBottom';
       if repeatCounter == 1
           AnchorPoint = 'LeftBottom';
       elseif repeatCounter == 2
           AnchorPoint = 'RightBottom';
           position_y = floor(0.92*frameSize(1));
       end
       currentFrame = insertText(currentFrame,[position_x position_y], 'Hyoid Burst', 'AnchorPoint', AnchorPoint);
       repeatCounter = repeatCounter + 1;
   end
       
   if i == globalStudyInfo.ues_closure
       position_x = floor(frameSize(2)*3/4);
       position_y = frameSize(1);
       AnchorPoint = 'RightBottom';
       if repeatCounter == 1
           AnchorPoint = 'LeftBottom';
       elseif repeatCounter == 2
           AnchorPoint = 'RightBottom';
           position_y = floor(0.92*frameSize(1));
       elseif repeatCounter == 3
           AnchorPoint = 'LeftBottom';
           position_y = floor(.92*frameSize(1));
       end
       currentFrame = insertText(currentFrame,[position_x position_y], 'UES Closure', 'AnchorPoint', AnchorPoint);
       repeatCounter = repeatCounter + 1;
   end
   
   if i == globalStudyInfo.at_rest
       position_x = floor(frameSize(2)*3/4);
       position_y = frameSize(1);
       AnchorPoint = 'RightBottom';
       if repeatCounter == 1
           AnchorPoint = 'LeftBottom';
       elseif repeatCounter == 2
           AnchorPoint = 'RightBottom';
           position_y = floor(0.92*frameSize(1));
       elseif repeatCounter == 3
           AnchorPoint = 'LeftBottom';
           position_y = floor(0.92*frameSize(1));
       elseif repeatCounter == 4;
           AnchorPoint = 'RightBottom';
           position_x = frameSize(2);
       end
       currentFrame = insertText(currentFrame,[position_x position_y], 'At Rest', 'AnchorPoint', AnchorPoint);
   end
       
   step(videoFileWriter, currentFrame);
end


release(videoFileWriter);
Utilities.CustomPrinters.printInfo('Done writing video file');


    % --- Executes on key press with focus on landmarksListBox and none of its controls.
function landmarksListBox_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to landmarksListBox (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
uicontrol(handles.frameScrubber);


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
     globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    if (globalStudyInfo.subswallowFrame(3,1)~=0)
        set(handles.frameScrubber, 'Value', globalStudyInfo.subswallowFrame(3,1)); 
        globalStudyInfo.currentSubswallowPointer=3;
        changeCurrentWriteAbleText(globalStudyInfo);
       setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo); 
        
    else
        
         set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"subswallow 3 is not labeled");
        return;
    end
    

    

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.ues_closure)==1)
        return;
      end
    setTextForOtherButtons(globalStudyInfo,floor(get(handles.frameScrubber, 'Value')),25,handles);
    uicontrol(handles.frameScrubber);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    globalStudyInfo.at_rest = floor(get(handles.frameScrubber, 'Value'));
    set(handles.at_rest_text, 'String', globalStudyInfo.at_rest);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
    uicontrol(handles.frameScrubber);

% --- Executes on button press in deletebutton.
function deletebutton_Callback(hObject, eventdata, handles)
% hObject    handle to deletebutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    currentLandmark = globalStudyInfo.currentlyTrackedLandmark;
    numFramesTotal = globalStudyInfo.vfVideoStructure.numFrames;
    globalStudyInfo.studyCoordinates.deleteLaterCoordinates(currentFrameIndex, numFramesTotal, currentLandmark);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
    Render(handles);
    uicontrol(handles.frameScrubber);

% --- Executes on button press in startButton.
function startButton_Callback(hObject, eventdata, handles)
% hObject    handle to startButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
      globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    if (globalStudyInfo.subswallowFrame(1,1)~=0)
        set(handles.frameScrubber, 'Value', globalStudyInfo.subswallowFrame(1,1)); 
        globalStudyInfo.currentSubswallowPointer=1;
        changeCurrentWriteAbleText(globalStudyInfo);
       setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo); 
    else
         set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"subswallow 1 is not labeled");
        return;
    end

% --- Executes on button press in endButton.
function endButton_Callback(hObject, eventdata, handles)
% hObject    handle to endButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
       globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    if(globalStudyInfo.subswallowFrame(2,1)~=0)
        set(handles.frameScrubber, 'Value', globalStudyInfo.subswallowFrame(2,1)); 
        
               globalStudyInfo.currentSubswallowPointer=2;
        changeCurrentWriteAbleText(globalStudyInfo);
       setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo); 
        
    else
        
         set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"subswallow 2 is not labeled");
        return;
    end
% --- Executes on button press in laryngeal vestibule closing.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.lvc_offset)==1)
        return;
      end
   setTextForOtherButtons(globalStudyInfo,floor(get(handles.frameScrubber, 'Value')),28,handles);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
    uicontrol(handles.frameScrubber);
    

% --- Executes on button press for laryngeal vestibule opening.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.lvc_offset)==1)
        return;
      end
   setTextForOtherButtons(globalStudyInfo,floor(get(handles.frameScrubber, 'Value')),29,handles);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
    uicontrol(handles.frameScrubber);

% --- Executes on button press in pushbutton16 - ues opening.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.ues_opening)==1)
        return;
      end
   setTextForOtherButtons(globalStudyInfo,floor(get(handles.frameScrubber, 'Value')),24,handles);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
    uicontrol(handles.frameScrubber);




% --- Executes during object creation, after setting all properties.
function numPyramidLevelsLabel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to numPyramidLevelsLabel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% set(hObject,'BackgroundColor',[.21 .21 .21]);
% set(hObject,'Font',[1 1 1]);
% set(hObject, 'Parent', handles.semiautoPanel);


% --- Executes during object creation, after setting all properties.
function text11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
% set(hObject,'ForegroundColor',[1 1 1]);


% --- Executes on key press with focus on text21 and none of its controls.
function text21_Callback(hObject, eventdata, handles)
% hObject    handle to text21 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
button_state = get(hObject,'Value');

if button_state == get(hObject,'Max')
    set(handles.semiautoPanel, 'visible', 'on');
    set(handles.unitCalibrationPanel, 'visible', 'off');

elseif button_state == get(hObject,'Min')
    set(handles.semiautoPanel, 'visible', 'off');
    set(handles.unitCalibrationPanel, 'visible', 'off');
end

drawnow();


% --- Executes during object creation, after setting all properties.
function semiautoPanel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to semiautoPanel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject, 'visible', 'off');

function estSize_Callback(hObject, eventdata, handles)
% hObject    handle to estSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of estSize as text
%        str2double(get(hObject,'String')) returns contents of estSize as a double
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
    if(isempty(globalStudyInfo.si_point1) || isempty(globalStudyInfo.si_point2))
        showFeedbackPopup(handles,'Please Track Points',1);

    else
        if(isnan(str2double(get(hObject,'String'))))
            showFeedbackPopup(handles,'Please Enter Valid Number',1);
        end
        bothPoints = [globalStudyInfo.si_point1(1),globalStudyInfo.si_point1(2);globalStudyInfo.si_point2(1),globalStudyInfo.si_point2(2)];
        bothPoints_dist = coordinates_dist(bothPoints);
        %bothPoints_dist2 = pdist(bothPoints, 'euclidean');

        estSize = str2double(get(hObject,'String'));
        globalStudyInfo.pixelspercm = bothPoints_dist / estSize;
        set(handles.pixelspercm_text, 'String', num2str(globalStudyInfo.pixelspercm));
        showFeedbackPopup(handles,'SI Scalar Calculated',2);

    end
    
    %Change the font color of the calibration button if calibration has
    %been completed.
    if ~isempty(globalStudyInfo.pixelspercm) && globalStudyInfo.pixelspercm > 0 && globalStudyInfo.pixelspercm < 10e6
        handles.unitCalibrationButton.ForegroundColor = [0 1 0];
    else
        handles.unitCalibrationButton.ForegroundColor = [1 0 0];
        
    end
    
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes during object creation, after setting all properties.
function estSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to estSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calibrateSIbutton.
function calibrateSIbutton_Callback(hObject, eventdata, handles)
% hObject    handle to calibrateSIbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    button_state = get(hObject,'Value');
    
    if (button_state == get(hObject,'Max'))
        set(hObject,'String','Click one edge');

        [x, y] = mygetpts();
        globalStudyInfo.si_point1 = [x(1) y(1)];
        set(handles.si_point1_text, 'String', sprintf('%-.2f  ,  %-.2f',x,y));
        set(hObject,'String','Click opposite edge');
        showFeedbackPopup(handles,'Point 1 Tracked',2);

        [x, y] = mygetpts();
        globalStudyInfo.si_point2 = [x(1) y(1)];
        set(handles.si_point2_text, 'String', sprintf('%-.2f  ,  %-.2f',x,y));
        set(hObject,'String','Calibrate SI Units');
        set(hObject,'Value',0);
        showFeedbackPopup(handles,'Point 2 Tracked',2);
    end
        
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over estSize.
function estSize_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to estSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(hObject, 'String', '');
set(hObject, 'enable', 'on');
uicontrol(hObject);

function kineBool = checkStartEndFrames(handles)
  
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    if (isempty(globalStudyInfo.start_frame) || isempty(globalStudyInfo.end_frame))
        kineBool = false;
        warningMessage = sprintf('Error: Cannot display kinematics because start and end frames not designated. Please assign these frames.');
        uiwait(msgbox(warningMessage));
          kineBool=true; %%later neet to be deleted;
    else
        kineBool = true;
    end

% --- Executes on button press in kinematicsButton.
function kinematicsButton_Callback(hObject, eventdata, handles)
% hObject    handle to kinematicsButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    if (checkStartEndFrames(handles))
        
        
          % %retreive file path information stored in initialize
        fullFileName = getappdata(handles.kinematicsButton,'fullFileName');
        [pathstr name ext] = fileparts(fullFileName);
        Author='Ruite';
        size(name)
        s='reached here1?'
        valueDataFileName =strcat(name,'_UnValidated_',Author,'.txt');
       
        fclose(fopen(valueDataFileName, 'w'));
        globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
        ValueStorage= globalStudyInfo.ValueStorage;
        ssCount=globalStudyInfo.subSwallowCount;
        subswallowArray = globalStudyInfo.subswallowFrame;
         s='reached here2?'
        fileID = fopen(valueDataFileName,'w');
         s='reached here3?'
        fprintf(fileID,'%s\n',Author); %first line is author name;
         s='reached here4?'
        fprintf(fileID,'%d\n',ssCount); % second line is ssCount, so we know how many data to read
         s='reached here5?'
        for i = 1:ssCount
             fprintf(fileID,'%d%s%d\n',subswallowArray(i,1),',',subswallowArray(i,2));
              s='reached here6?'
        end
        for k =1:33
            fprintf(fileID,'%d%s%d%s%d\n',ValueStorage(k,1),',',ValueStorage(k,2),',',ValueStorage(k,3));
             s='reached here7?'
        end
        
       % fprintf(fileID,'%6.2f %12.8f\n',A);
        fclose(fileID);
        
        
        
        %automatically saving the file  
        %saveButton_ClickedCallback(hObject, eventdata, handles); %debug

        %close previous window if it exists
        close(findobj('type','figure','name','Kinematic Variables'))

      

        if exist([fullFileName(1:end-length(ext)) '_morphoj_.txt'],'file')

        %     %change directory
        %     cd Compiler

            %run compiler
            kinematicValues = Compiler(fullFileName);

        %     %return directory
        %     cd ../

            %create table and format
            h = figure('Visible','off','Name','Kinematic Variables','NumberTitle','off', 'MenuBar', 'none', 'ToolBar' , 'none');
            u = uitable(h,'Data',kinematicValues);
            columnWidth = fitColumns(u.Data);
            u.ColumnWidth = columnWidth;
            table_extent = get(u,'Extent');
            figure_size = get(h,'outerposition');
            desired_fig_size = [figure_size(1) figure_size(2) table_extent(3)+36 table_extent(4)+65];
            set(u,'Position',[1 20 table_extent(3)+35 table_extent(4)])
            set(h,'outerposition', desired_fig_size);
            set(h,'Visible','on');

        else
            warningMessage = sprintf('WARNING: Cannot display kinematics because file does not exist. Click "save" first!');
            uiwait(msgbox(warningMessage));
        end
    end

function columnWidth = fitColumns(data)
    dataSize = size(data);
    maxLen = zeros(1,dataSize(2));
    for i = 1:dataSize(2)
        for j = 1:dataSize(1)
            len = length(data{j,i});
            if j == 1
                len = length(data{j,i}) - length('<html><b></b><html>');
            end
            
            if(len>maxLen(1,i))
                maxLen(1,i) = len;
            end
           
        end
        if maxLen(1,i) < 5
            maxLen(1,i) = 7;
        end
    end
    
    columnWidth = num2cell(maxLen*6);

% --- Executes on button press in unitCalibrationButton.
function unitCalibrationButton_Callback(hObject, eventdata, handles)
% hObject    handle to unitCalibrationButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of unitCalibrationButton

button_state = get(hObject,'Value');

if button_state == get(hObject,'Max')
    set(handles.unitCalibrationPanel, 'visible', 'on');
    set(handles.semiautoPanel, 'visible', 'off');
%     set(handles.text21, 'visible', 'off');
%     set(handles.noiseFilterLevelSlider, 'visible', 'off');
%     set(handles.gammaAdjustSlider, 'visible', 'off');
%     set(handles.noiseFilterLevelIndicator, 'visible', 'off');
%     set(handles.gammaAdjustLevelIndicator, 'visible', 'off');

elseif button_state == get(hObject,'Min')
    set(handles.unitCalibrationPanel, 'visible', 'off');
%     set(handles.semiautoPanel, 'visible', 'on');
%     set(handles.text21, 'visible', 'on');
%     set(handles.noiseFilterLevelSlider, 'visible', 'on');
%     set(handles.gammaAdjustSlider, 'visible', 'on');
%     set(handles.noiseFilterLevelIndicator, 'visible', 'on');
%     set(handles.gammaAdjustLevelIndicator, 'visible', 'on');
end

drawnow();

% --- Executes during object creation, after setting all properties.
function unitCalibrationPanel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to unitCalibrationPanel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
set(hObject, 'visible', 'off');

% --------------------------------------------------------------------
function customZoom_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to customZoom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.zoomHandle = zoom;
handles.zoomHandle.ActionPostCallback = {@un_zoom,handles};
handles.zoomHandle.Enable = 'on';
%

function un_zoom(obj,evd,handles)
    
persistent chk
if isempty(chk)
      chk = 1;
      pause(0.3); %Add a delay to distinguish single click from a double click
      if chk == 1
        chk = [];
        handles.zoomHandle.ModeHandle.Blocking = false;
        handles.zoomHandle.Enable = 'off';
        handles.zoomHandle.ActionPostCallback = [];
      end
else
      chk = [];
      zoom out
      zoom reset
      handles.zoomHandle.ModeHandle.Blocking = false;
      handles.zoomHandle.Enable = 'off';
      handles.zoomHandle.ActionPostCallback = [];
end


% --- Executes on key press with focus on frameScrubber and none of its controls.
function frameScrubber_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to frameScrubber (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
switch(lower(eventdata.Key))
    case '1'
        startButton_Callback(hObject, eventdata, handles);
    case '2'
        pushbutton1_Callback(hObject, eventdata, handles);
    case '3'
        pushbutton2_Callback(hObject, eventdata, handles);
    case '4'
        pushbutton3_Callback(hObject, eventdata, handles);
    case '5'
        pushbutton4_Callback(hObject, eventdata, handles);
    case '6'
        pushbutton5_Callback(hObject, eventdata, handles);
    case '7'
        endButton_Callback(hObject, eventdata, handles);
end

% --------------------------------------------------------------------
function legendToggle_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to legendToggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(hObject, 'State', 'Off');
    h = msgbox({'Shortcuts' '' 's - Semiautomatic tracking' 'm - Manual tracking' 'p - Pointer' '' ...
        'Right Arrow - Increase Frame Number +1' 'Left Arrow - Increase Frame Number - 1' '' ...
        '1 - Start Frame' '2 - Hold Position' '3 - Ramus of Mandible' '4 - Hyoid Burst' '5 - UES Closure' '6 - At Rest' '7 - End Frame' '' ...
        'Kinematics' '' 'ahm - Anterior Hyoid Movement' 'shm - Superior Hyoid Movement'...
        'hyExMand - Hyoid Excursion To Mandible' 'hyExC4 - Hyoid Excursion To Only C4' ...
        'hyExVert - Hyoid Excursion To Vertebrae (C1-C4)'  ...
        'alm - Anterior Laryngeal Movement' 'slm - Superior Laryngeal Movement' ...
        'hla - Hyolaryngeal Approximation' 'le - Laryngeal Elevation' ...
        'ps - Pharyngeal Shortening' 'botrr - Base of Tongue Retraction Ratio' ''...
        'ott - Oral Transport Time' 'std - Stage Transition Duration' ...
        'ptt - Pharyngeal Transport Time' 'optt - Oropharyngeal Transport Time' ...
        'pdt - Pharyngeal Delay Time' 'lvc - Laryngeal Vestibule Closure Duration' ...
        'uesod - UES Opening Duration' 'hmd - Hyoid Movement Duration' ...
        'lvcrt - Laryngeal Vestibule Closure Reaction Time' '' ...
        'nrrs_val - National Residue Ratio Scale for Valleculae' ...
        'nrrs_piri - National Residue Ratio Scale for Piriform' ...
        'pcr - Pharyngeal Constriction Ratio'...
        'ePCR - Experimental Pharyngeal Constriction Ratio using Coordinates'...
        'pas - Penetration Aspiration Scale'...
        'ues_dist - UES Distension' ...
        '' 'Suffixes' ''...
        '_vert - Normalized to the length of C2-C4' ... 
        '_si - Normalized to the size of the coin on the screen'});


% --- Executes on button press in pcr_min_area_button.
function pcr_min_area_button_Callback(hObject, eventdata, handles)
% hObject    handle to pcr_min_area_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pcr_min_area_button
handles.frameViewer;
h = imfreehand_overwrite;

%pos = h.getPosition();
hc = get(h,'Children');
XData = []; YData = [];
for ii=1:length(hc)
  x = get(hc(ii),'XData');
  y = get(hc(ii),'YData');
  XData = [XData; x(:)];
  YData = [YData; y(:)];
end

   globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    button_state = get(hObject,'Value');
    allPoints = [0,0];
    
       hList = [];
     hList = [hList;h];
     while (button_state==get(hObject,'Max'))
         h1 = imfreehand_overwrite;
         hc = get(h1,'Children');
         XData1 = []; YData1 = [];
         for ii=1:length(hc)
             x = get(hc(ii),'XData');
             y = get(hc(ii),'YData');
             XData1 = [XData1; x(:)];
             YData1 = [YData1; y(:)];    
         end
         XData = [XData;XData1];
         YData = [YData;YData1];
         hList = [hList;h1];
         globalStudyInfo2 = getappdata(handles.appFigure, 'globalStudyInfo');
         if(globalStudyInfo2.multiDraw==1)
             globalStudyInfo2.multiDraw=0;     
             setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo2);
             break;
         end
     end
    
    if (button_state == get(hObject,'Max'))
      %  [x, y] = mygetline(handles.frameViewer);
      %  allPoints = [x,y];
       allPoints = [XData,YData];
       
        showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(XData)), 2);
        set(hObject,'Value',0);
    end
    
    pcr = 0;
    numPoints = size(allPoints,1);
    %allPoints
%     globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
%     button_state = get(hObject,'Value');
%     allPoints = [0,0];
%     
%     if (button_state == get(hObject,'Max'))
%         [x, y] = mygetline(handles.frameViewer);
%         allPoints = [x,y];
%         
%         showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(x)), 2);
%         set(hObject,'Value',0);
%     end
%     
%     pcr = 0;
%     numPoints = size(allPoints,1);
%     allPoints
    
    for i = 1:numPoints
        if numPoints == 1
            disp('Only 1 point selected, PCR will not be calculated');
            break;
        end
        
        % Coordinate based area calculation
        if i == numPoints
            pcr = pcr + ((allPoints(i,1) * allPoints(mod(i+1,numPoints),2)) ...
                - (allPoints(i,2) * allPoints(mod(i+1,numPoints),1)));
            
            pcr = abs(pcr / 2);
            showFeedbackPopup(handles, sprintf('PCR: %-.2f', pcr), 2);
            Utilities.CustomPrinters.printInfo(sprintf('PCR: %-.2f', pcr));
        else
            pcr = pcr + ((allPoints(i,1) * allPoints(i+1,2)) ...
                - (allPoints(i,2) * allPoints(i+1,1)));
        end
    end
    
    if numPoints>2
        globalStudyInfo.pcr_min_points = allPoints;
        globalStudyInfo.pcr_min_area = pcr;
        handles.pcr_min_area_text.String = num2str(pcr);
         ref_hList =globalStudyInfo.ref_Hlist;
       if(~isempty(ref_hList))  
       [c,d] = size(ref_hList);
         for mm = 1:c
         delete(ref_hList(mm,1));
         end
         globalStudyInfo.ref_Hlist = [];      
       end
        setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
          [a,b] = size(hList);
        for m = 1:a
        delete(hList(m,1));
        end
    end

% --- Executes on button press in pcr_max_area_button.
function pcr_max_area_button_Callback(hObject, eventdata, handles)
% hObject    handle to pcr_max_area_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pcr_max_area_button
handles.frameViewer;
h = imfreehand_overwrite;

%pos = h.getPosition();
hc = get(h,'Children');
XData = []; YData = [];
for ii=1:length(hc)
  x = get(hc(ii),'XData');
  y = get(hc(ii),'YData');
  XData = [XData; x(:)];
  YData = [YData; y(:)];
end

   globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    button_state = get(hObject,'Value');
    allPoints = [0,0];
    
       hList = [];
     hList = [hList;h];
     while (button_state==get(hObject,'Max'))
         h1 = imfreehand_overwrite;
         hc = get(h1,'Children');
         XData1 = []; YData1 = [];
         for ii=1:length(hc)
             x = get(hc(ii),'XData');
             y = get(hc(ii),'YData');
             XData1 = [XData1; x(:)];
             YData1 = [YData1; y(:)];    
         end
         XData = [XData;XData1];
         YData = [YData;YData1];
         hList = [hList;h1];
         globalStudyInfo2 = getappdata(handles.appFigure, 'globalStudyInfo');
         if(globalStudyInfo2.multiDraw==1)
             globalStudyInfo2.multiDraw=0;     
             setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo2);
             break;
         end
     end
    
    if (button_state == get(hObject,'Max'))
      %  [x, y] = mygetline(handles.frameViewer);
      %  allPoints = [x,y];
       allPoints = [XData,YData];
       
        showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(XData)), 2);
        set(hObject,'Value',0);
    end
    
    
    pcr = 0;
    numPoints = size(allPoints,1);
    
    for i = 1:numPoints
        if numPoints == 1
            disp('Only 1 point selected, PCR will not be calculated');
            break;
        end
        
        % Coordinate based area calculation
        if i == numPoints
            pcr = pcr + ((allPoints(i,1) * allPoints(mod(i+1,numPoints),2)) ...
                - (allPoints(i,2) * allPoints(mod(i+1,numPoints),1)));
            
            pcr = abs(pcr / 2);
            showFeedbackPopup(handles, sprintf('PCR: %-.2f', pcr), 2);
            Utilities.CustomPrinters.printInfo(sprintf('PCR: %-.2f', pcr));
        else
            pcr = pcr + ((allPoints(i,1) * allPoints(i+1,2)) ...
                - (allPoints(i,2) * allPoints(i+1,1)));
        end
    end
    
    if numPoints>2
        globalStudyInfo.pcr_max_points = allPoints;
        globalStudyInfo.pcr_max_area = pcr;
        handles.pcr_max_area_text.String = num2str(pcr);
         ref_hList =globalStudyInfo.ref_Hlist;
       if(~isempty(ref_hList))  
       [c,d] = size(ref_hList);
         for mm = 1:c
         delete(ref_hList(mm,1));
         end
         globalStudyInfo.ref_Hlist = [];      
       end
        setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
         [a,b] = size(hList);
        for m = 1:a
        delete(hList(m,1));
        end
    end


% --------------------------------------------------------------------
function openFileButton_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to openFileButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    close('VFTracker3');
    VFTracker3;

% --------------------------------------------------------------------
function semiautoOptions_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to semiautoPanel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    button_state = get(hObject,'State');
    
    switch button_state
        case 'on'
            set(handles.semiautoPanel, 'visible', 'on');
            set(handles.unitCalibrationPanel, 'visible', 'off');
        case 'off'
            set(handles.semiautoPanel, 'visible', 'off');
            set(handles.unitCalibrationPanel, 'visible', 'off');
    end

% --- Executes during object creation, after setting all properties.
function semiautoOptions_CreateFcn(hObject, eventdata, handles)
% hObject    handle to semiautoOptions (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
    set(hObject, 'State', 'off');

% --- Executes on button press in valres_toggle.
function valres_toggle_Callback(hObject, eventdata, handles)
% hObject    handle to valres_toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of valres_toggle


handles.frameViewer;
h = imfreehand_overwrite;
%pos = h.getPosition();
hc = get(h,'Children');
XData = []; YData = [];
for ii=1:length(hc)
  x = get(hc(ii),'XData');
  y = get(hc(ii),'YData');
  XData = [XData; x(:)];
  YData = [YData; y(:)];
end

   globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    button_state = get(hObject,'Value');
    allPoints = [0,0];
     hList = [];
     hList = [hList;h];
     while (button_state==get(hObject,'Max'))
         h1 = imfreehand_overwrite;
         hc = get(h1,'Children');
         XData1 = []; YData1 = [];
         for ii=1:length(hc)
             x = get(hc(ii),'XData');
             y = get(hc(ii),'YData');
             XData1 = [XData1; x(:)];
             YData1 = [YData1; y(:)];    
         end
         XData = [XData;XData1];
         YData = [YData;YData1];
         hList = [hList;h1];
         globalStudyInfo2 = getappdata(handles.appFigure, 'globalStudyInfo');
         if(globalStudyInfo2.multiDraw==1)
             globalStudyInfo2.multiDraw=0;     
             setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo2);
             break;
         end
     end
    
    if (button_state == get(hObject,'Max'))
      %  [x, y] = mygetline(handles.frameViewer);
      %  allPoints = [x,y];
       allPoints = [XData,YData];
       
        showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(XData)), 2);
        set(hObject,'Value',0);
    end
    
  
%     globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
%     button_state = get(hObject,'Value');
%     allPoints = [0,0];
%     
%     if (button_state == get(hObject,'Max'))
%         
%         [x, y] = mygetline(handles.frameViewer);
%         allPoints = [x,y];
%         
%         showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(x)), 2);
%         set(hObject,'String','Valleculae Residue');
%         set(hObject,'Value',0);
%     end
    
    valres_area = 0;
    numPoints = size(allPoints,1);
    
    for i = 1:numPoints
        if numPoints == 1
            disp('Only 1 point selected, Valleculae Residue will not be calculated');
            break;
        end
        
        % Coordinate based area calculation
        if i == numPoints
            valres_area = valres_area + ((allPoints(i,1) * allPoints(mod(i+1,numPoints),2)) ...
                - (allPoints(i,2) * allPoints(mod(i+1,numPoints),1)));
            
            valres_area = abs(valres_area / 2);
            showFeedbackPopup(handles, sprintf('Val Res Area: %-.2f', valres_area), 2);
            Utilities.CustomPrinters.printInfo(sprintf('Val Res Area: %-.2f', valres_area));
        else
            valres_area = valres_area + ((allPoints(i,1) * allPoints(i+1,2)) ...
                - (allPoints(i,2) * allPoints(i+1,1)));
        end
    end
       
     
    if numPoints>2
        globalStudyInfo.nrrs_valres_points = allPoints;
        globalStudyInfo.nrrs_valres_area = valres_area;
        handles.nrrs_valres_area_text.String = num2str(valres_area);
        
         ref_hList =globalStudyInfo.ref_Hlist;
       if(~isempty(ref_hList))  
       [c,d] = size(ref_hList);
         for mm = 1:c
         delete(ref_hList(mm,1));
         end
         globalStudyInfo.ref_Hlist = [];      
       end
        setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
       [a,b] = size(hList);
        for m = 1:a
        delete(hList(m,1));
        end
    end
    
% --- Executes on button press in valarea_toggle.
function valarea_toggle_Callback(hObject, eventdata, handles)
% hObject    handle to valarea_toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of valarea_toggle

handles.frameViewer;
h = imfreehand_overwrite;

%pos = h.getPosition();
hc = get(h,'Children');
XData = []; YData = [];
for ii=1:length(hc)
  x = get(hc(ii),'XData');
  y = get(hc(ii),'YData');
  XData = [XData; x(:)];
  YData = [YData; y(:)];
end

   globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    button_state = get(hObject,'Value');
    allPoints = [0,0];
    
       hList = [];
     hList = [hList;h];
     while (button_state==get(hObject,'Max'))
         h1 = imfreehand_overwrite;
         hc = get(h1,'Children');
         XData1 = []; YData1 = [];
         for ii=1:length(hc)
             x = get(hc(ii),'XData');
             y = get(hc(ii),'YData');
             XData1 = [XData1; x(:)];
             YData1 = [YData1; y(:)];    
         end
         XData = [XData;XData1];
         YData = [YData;YData1];
         hList = [hList;h1];
         globalStudyInfo2 = getappdata(handles.appFigure, 'globalStudyInfo');
         if(globalStudyInfo2.multiDraw==1)
             globalStudyInfo2.multiDraw=0;     
             setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo2);
             break;
         end
     end
    
    if (button_state == get(hObject,'Max'))
      %  [x, y] = mygetline(handles.frameViewer);
      %  allPoints = [x,y];
       allPoints = [XData,YData];
       
        showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(XData)), 2);
        set(hObject,'Value',0);
    end
    
    pcr = 0;
    numPoints = size(allPoints,1);
    allPoints
%     globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
%     button_state = get(hObject,'Value');
%     allPoints = [0,0];
    
%     if (button_state == get(hObject,'Max'))
%         
%         [x, y] = mygetline(handles.frameViewer);
%         allPoints = [x,y];
%         
%         showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(x)), 2);
%         set(hObject,'String','Valleculae Area');
%         set(hObject,'Value',0);
%     end
    
    totalval_area = 0;
    numPoints = size(allPoints,1);
    
    for i = 1:numPoints
        if numPoints == 1
            disp('Only 1 point selected, Total Valleculae Area will not be calculated');
            break;
        end
        
        % Coordinate based area calculation
        if i == numPoints
            totalval_area = totalval_area + ((allPoints(i,1) * allPoints(mod(i+1,numPoints),2)) ...
                - (allPoints(i,2) * allPoints(mod(i+1,numPoints),1)));
            
            totalval_area = abs(totalval_area / 2);
            showFeedbackPopup(handles, sprintf('Total Valleculae Area: %-.2f', totalval_area), 2);
            Utilities.CustomPrinters.printInfo(sprintf('Total Valleculae Area: %-.2f', totalval_area));
        else
            totalval_area = totalval_area + ((allPoints(i,1) * allPoints(i+1,2)) ...
                - (allPoints(i,2) * allPoints(i+1,1)));
        end
    end
    
    if numPoints>2
        globalStudyInfo.nrrs_totalval_points = allPoints;
        globalStudyInfo.nrrs_totalval_area = totalval_area;
        handles.nrrs_totalval_area_text.String = num2str(totalval_area);
         ref_hList =globalStudyInfo.ref_Hlist;
       if(~isempty(ref_hList))  
       [c,d] = size(ref_hList);
         for mm = 1:c
         delete(ref_hList(mm,1));
         end
         globalStudyInfo.ref_Hlist = [];      
       end

        setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
          [a,b] = size(hList);
        for m = 1:a
        delete(hList(m,1));
        end
    end
    
% --- Executes on button press in pirires_toggle.
function pirires_toggle_Callback(hObject, eventdata, handles)
% hObject    handle to pirires_toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pirires_toggle

handles.frameViewer;
h = imfreehand_overwrite;

%pos = h.getPosition();
hc = get(h,'Children');
XData = []; YData = [];
for ii=1:length(hc)
  x = get(hc(ii),'XData');
  y = get(hc(ii),'YData');
  XData = [XData; x(:)];
  YData = [YData; y(:)];
end

   globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    button_state = get(hObject,'Value');
    allPoints = [0,0];
    
       hList = [];
     hList = [hList;h];
     while (button_state==get(hObject,'Max'))
         h1 = imfreehand_overwrite;
         hc = get(h1,'Children');
         XData1 = []; YData1 = [];
         for ii=1:length(hc)
             x = get(hc(ii),'XData');
             y = get(hc(ii),'YData');
             XData1 = [XData1; x(:)];
             YData1 = [YData1; y(:)];    
         end
         XData = [XData;XData1];
         YData = [YData;YData1];
         hList = [hList;h1];
         globalStudyInfo2 = getappdata(handles.appFigure, 'globalStudyInfo');
         if(globalStudyInfo2.multiDraw==1)
             globalStudyInfo2.multiDraw=0;     
             setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo2);
             break;
         end
     end
    
    if (button_state == get(hObject,'Max'))
      %  [x, y] = mygetline(handles.frameViewer);
      %  allPoints = [x,y];
       allPoints = [XData,YData];
       
        showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(XData)), 2);
        set(hObject,'Value',0);
    end
    
  
%     globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
%     button_state = get(hObject,'Value');
%     allPoints = [0,0];
%     
%     if (button_state == get(hObject,'Max'))
%         
%         [x, y] = mygetline(handles.frameViewer);
%         allPoints = [x,y];
%         
%         showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(x)), 2);
%         set(hObject,'String','Piriform Residue');
%         set(hObject,'Value',0);
%     end
    
    pirires_area = 0;
    numPoints = size(allPoints,1);
    
    for i = 1:numPoints
        if numPoints == 1
            disp('Only 1 point selected, Piriform Residue Area will not be calculated');
            break;
        end
        
        % Coordinate based area calculation
        if i == numPoints
            pirires_area = pirires_area + ((allPoints(i,1) * allPoints(mod(i+1,numPoints),2)) ...
                - (allPoints(i,2) * allPoints(mod(i+1,numPoints),1)));
            
            pirires_area = abs(pirires_area / 2);
            showFeedbackPopup(handles, sprintf('Piriform Residue Area: %-.2f', pirires_area), 2);
            Utilities.CustomPrinters.printInfo(sprintf('Piriform Residue Area: %-.2f', pirires_area));
        else
            pirires_area = pirires_area + ((allPoints(i,1) * allPoints(i+1,2)) ...
                - (allPoints(i,2) * allPoints(i+1,1)));
        end
    end
    
    if numPoints>2
        globalStudyInfo.nrrs_pirires_points = allPoints;
        globalStudyInfo.nrrs_pirires_area = pirires_area;
        handles.nrrs_pirires_area_text.String = num2str(pirires_area);
         ref_hList =globalStudyInfo.ref_Hlist;
       if(~isempty(ref_hList))  
       [c,d] = size(ref_hList);
         for mm = 1:c
         delete(ref_hList(mm,1));
         end
         globalStudyInfo.ref_Hlist = [];      
       end
        setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
          [a,b] = size(hList);
        for m = 1:a
        delete(hList(m,1));
        end
    end
    

% --- Executes on button press in piriarea_toggle.
function piriarea_toggle_Callback(hObject, eventdata, handles)
% hObject    handle to piriarea_toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of piriarea_toggle

handles.frameViewer;
h = imfreehand_overwrite;

%pos = h.getPosition();
hc = get(h,'Children');
XData = []; YData = [];
for ii=1:length(hc)
  x = get(hc(ii),'XData');
  y = get(hc(ii),'YData');
  XData = [XData; x(:)];
  YData = [YData; y(:)];
end

   globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    button_state = get(hObject,'Value');
    allPoints = [0,0];
    
       hList = [];
     hList = [hList;h];
     while (button_state==get(hObject,'Max'))
         h1 = imfreehand_overwrite;
         hc = get(h1,'Children');
         XData1 = []; YData1 = [];
         for ii=1:length(hc)
             x = get(hc(ii),'XData');
             y = get(hc(ii),'YData');
             XData1 = [XData1; x(:)];
             YData1 = [YData1; y(:)];    
         end
         XData = [XData;XData1];
         YData = [YData;YData1];
         hList = [hList;h1];
         globalStudyInfo2 = getappdata(handles.appFigure, 'globalStudyInfo');
         if(globalStudyInfo2.multiDraw==1)
             globalStudyInfo2.multiDraw=0;     
             setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo2);
             break;
         end
     end
    
    if (button_state == get(hObject,'Max'))
      %  [x, y] = mygetline(handles.frameViewer);
      %  allPoints = [x,y];
       allPoints = [XData,YData];
       
        showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(XData)), 2);
        set(hObject,'Value',0);
    end
    

%     globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
%     button_state = get(hObject,'Value');
%     allPoints = [0,0];
%     
%     if (button_state == get(hObject,'Max'))
%         
%         [x, y] = mygetline(handles.frameViewer);
%         allPoints = [x,y];
%         
%         showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(x)), 2);
%         set(hObject,'String','Piriform Area');
%         set(hObject,'Value',0);
%     end
    
    totalpiri_area = 0;
    numPoints = size(allPoints,1);
    
    for i = 1:numPoints
        if numPoints == 1
            disp('Only 1 point selected, Total Piriform Area will not be calculated');
            break;
        end
        
        % Coordinate based area calculation
        if i == numPoints
            totalpiri_area = totalpiri_area + ((allPoints(i,1) * allPoints(mod(i+1,numPoints),2)) ...
                - (allPoints(i,2) * allPoints(mod(i+1,numPoints),1)));
            
            totalpiri_area = abs(totalpiri_area / 2);
            showFeedbackPopup(handles, sprintf('Total Piriform Area: %-.2f', totalpiri_area), 2);
            Utilities.CustomPrinters.printInfo(sprintf('Total Piriform Area: %-.2f', totalpiri_area));
        else
            totalpiri_area = totalpiri_area + ((allPoints(i,1) * allPoints(i+1,2)) ...
                - (allPoints(i,2) * allPoints(i+1,1)));
        end
    end
        

    if numPoints>2
        globalStudyInfo.nrrs_totalpiri_points = allPoints;
        globalStudyInfo.nrrs_totalpiri_area = totalpiri_area;
        handles.nrrs_totalpiri_area_text.String = num2str(totalpiri_area);
         ref_hList =globalStudyInfo.ref_Hlist;
       if(~isempty(ref_hList))  
       [c,d] = size(ref_hList);
         for mm = 1:c
         delete(ref_hList(mm,1));
         end
         globalStudyInfo.ref_Hlist = [];      
       end
        setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
          [a,b] = size(hList);
        for m = 1:a
        delete(hList(m,1));
        end
    end
    
% --- Executes on button press in uesd_toggle.
function uesd_toggle_Callback(hObject, eventdata, handles)
% hObject    handle to uesd_toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of uesd_toggle

handles.frameViewer;
h = imfreehand_overwrite;

%pos = h.getPosition();
hc = get(h,'Children');
XData = []; YData = [];
for ii=1:length(hc)
  x = get(hc(ii),'XData');
  y = get(hc(ii),'YData');
  XData = [XData; x(:)];
  YData = [YData; y(:)];
end

   globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    button_state = get(hObject,'Value');
    allPoints = [0,0];
    
    
     hList = [];
     hList = [hList;h];
     while (button_state==get(hObject,'Max'))
         h1 = imfreehand_overwrite;
         hc = get(h1,'Children');
         XData1 = []; YData1 = [];
         for ii=1:length(hc)
             x = get(hc(ii),'XData');
             y = get(hc(ii),'YData');
             XData1 = [XData1; x(:)];
             YData1 = [YData1; y(:)];    
         end
         XData = [XData;XData1];
         YData = [YData;YData1];
         hList = [hList;h1];
         globalStudyInfo2 = getappdata(handles.appFigure, 'globalStudyInfo');
         if(globalStudyInfo2.multiDraw==1)
             globalStudyInfo2.multiDraw=0;     
             setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo2);
             break;
         end
     end
    
    if (button_state == get(hObject,'Max'))
      %  [x, y] = mygetline(handles.frameViewer);
      %  allPoints = [x,y];
       allPoints = [XData,YData];
       
        showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(XData)), 2);
        set(hObject,'Value',0);
    end
    
   
%     globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
%     button_state = get(hObject,'Value');
%     allPoints = [0,0];
%     
%     if (button_state == get(hObject,'Max'))
%         %getting all points for distension distance
%         allPoints = mygetline(handles.frameViewer);
%         showFeedbackPopup(handles,sprintf('Total %d Points Tracked', size(allPoints, 1)), 2);
%         set(hObject,'String','UES Distension');
%         set(hObject,'Value',0);
%     end
    
    if size(allPoints, 1) == 1
        disp('Only 1 point selected, UES distension will not be calculated');
        return;
    end

    uesd = coordinates_dist(allPoints);
    showFeedbackPopup(handles,sprintf('UES Distension: %-.2f', uesd), 2);

    if size(allPoints,1)>1
        globalStudyInfo.uesd_points = allPoints;
        globalStudyInfo.uesd_dist = uesd;
        handles.uesd_dist_text.String = num2str(uesd);
         ref_hList =globalStudyInfo.ref_Hlist;
       if(~isempty(ref_hList))  
       [c,d] = size(ref_hList);
         for mm = 1:c
         delete(ref_hList(mm,1));
         end
         globalStudyInfo.ref_Hlist = [];      
       end
        setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
         [a,b] = size(hList);
        for m = 1:a
        delete(hList(m,1));
        end
        
    end

% --- Executes on button press in pas_toggle.
function pas_toggle_Callback(hObject, eventdata, handles)
% hObject    handle to pas_toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of pas_toggle
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    button_state = get(hObject,'Value');
    allPoints = [0,0];
    
    if (button_state == get(hObject,'Max'))
        set(handles.pas_panel,'Visible','on');
        set(handles.pas_text,'Visible','on');
        uicontrol(handles.pas_text);
    else
        set(handles.pas_panel, 'Visible','off');
        set(handles.pas_text, 'Visible','off');
        uicontrol(handles.frameScrubber);
    end


function pas_text_Callback(hObject, eventdata, handles)
% hObject    handle to pas_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pas_text as text
%        str2double(get(hObject,'String')) returns contents of pas_text as a double
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
    if(isnan(str2double(get(hObject,'String'))))
        showFeedbackPopup(handles,'Please Enter Valid Number',1);
    else
        pas = str2double(get(hObject,'String'));
        globalStudyInfo.pas = pas;
        showFeedbackPopup(handles,sprintf('PAS Saved: %d', pas),2);
    end
    
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

% --- Executes during object creation, after setting all properties.
function pas_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pas_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'Visible', 'off');


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pas_text.
function pas_text_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pas_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    set(hObject, 'String', '');
    set(hObject, 'enable', 'on');
    uicontrol(hObject);



% --- Executes on button press in results.
function results_Callback(hObject, eventdata, handles)
% hObject    handle to results (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of results
toggle_state = get(hObject,'Value');
if toggle_state == 1
    %make visible
    handles.pas_text_in_panel.String = handles.pas_text.String;
    handles.pas_panel.Visible = 'Off';
    handles.pas_toggle.Value = 0;
    handles.results_panel.Visible = 'On';
elseif toggle_state == 0
    %make invisible
    handles.results_panel.Visible = 'Off';
end


% --------------------------------------------------------------------
function erase_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to erase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');

non_erasable_properties = {'vfVideoStructure','studyImageProcessingInfo','studyCoordinates', ...
                           'ues_point1','ues_point2','uesd_points','nrrs_valres_points',...
                           'nrrs_totalval_points','nrrs_pirires_points','nrrs_totalpiri_points',...
                           'pcr_min_points','pcr_max_points','currentlyTrackedLandmark','vfTracker',...
                           'harrisCorner','kltNumPyramidLevels','kltBlockSize','kltMaxIterations',...
                           'harrisFeatureDetectorParameters', 'kltTrackerParameters'};
                       
all_properties = properties(globalStudyInfo);

erasable_properties = {};
for i = 1:length(all_properties)
    is_non_erasable = any(strcmp(all_properties{i},non_erasable_properties));
    if is_non_erasable
    elseif ~is_non_erasable
        erasable_properties = [erasable_properties;all_properties{i}];
    else
        error('something went wrong! try again')
    end
end

[listbox_selection,~] = listdlg('ListString',erasable_properties,'InitialValue',[],'PromptString','Use CTRL and/or SHIFT to select multiple landmarks');

for i = listbox_selection
    globalStudyInfo.(erasable_properties{i}) = [];
    handles.([erasable_properties{i} '_text']).String = '';
end

%Change the font color of the calibration button if calibration has
%been completed.
if ~isempty(globalStudyInfo.pixelspercm) && globalStudyInfo.pixelspercm > 0 && globalStudyInfo.pixelspercm < 10e6
    handles.unitCalibrationButton.ForegroundColor = [0 1 0];
else
    handles.unitCalibrationButton.ForegroundColor = [1 0 0];

end
   
setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --------------------------------------------------------------------
function Save_as_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to Save_as (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
oldFeedbackLabelMessage = get(handles.feedbackLabel, 'String');
% set(handles.feedbackLabel, 'String', 'Saving...');
showFeedbackPopup(handles, 'Saving...',1);

drawnow()
Utilities.save_as_ResultFileWriter(globalStudyInfo);
showFeedbackPopup(handles, 'Saved', 2);


% --- Executes on button press in goToStartFrame.
function goToStartFrame_Callback(hObject, eventdata, handles)
% hObject    handle to goToStartFrame (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

        set(handles.frameScrubber, 'Value', 1);



% --- Executes on button press in beforePAS.
function beforePAS_Callback(hObject, eventdata, handles)
% hObject    handle to beforePAS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of beforePAS

globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');

if (get(hObject,'Value') == get(hObject,'Max'))
    if(isempty(globalStudyInfo.pas_classifiers))
        globalStudyInfo.pas_classifiers = [2, 1, 1];
    elseif length(globalStudyInfo.pas_classifiers)==1
        globalStudyInfo.pas_classifiers(1) = 2;
    elseif length(globalStudyInfo.pas_classifiers)==2
        globalStudyInfo.pas_classifiers(1) = 2;
    elseif length(globalStudyInfo.pas_classifiers)==3
        globalStudyInfo.pas_classifiers(1) = 2;
    end
    
else
    if(isempty(globalStudyInfo.pas_classifiers))
        globalStudyInfo.pas_classifiers = [1,1,1];
    elseif length(globalStudyInfo.pas_classifiers)==1
        globalStudyInfo.pas_classifiers(1) = 1;
    elseif length(globalStudyInfo.pas_classifiers)==2
        globalStudyInfo.pas_classifiers(1) = 1;
    elseif length(globalStudyInfo.pas_classifiers)==3
        globalStudyInfo.pas_classifiers(1) = 1;
    end
    
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

end



% --- Executes on button press in duringPAS.
function duringPAS_Callback(hObject, eventdata, handles)
% hObject    handle to duringPAS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of duringPAS
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');

if (get(hObject,'Value') == get(hObject,'Max'))
    if(isempty(globalStudyInfo.pas_classifiers))
        globalStudyInfo.pas_classifiers = [1,2,1];
    elseif length(globalStudyInfo.pas_classifiers)==1
        globalStudyInfo.pas_classifiers(2) = 2;
    elseif length(globalStudyInfo.pas_classifiers)==2
        globalStudyInfo.pas_classifiers(2) = 2;
    elseif length(globalStudyInfo.pas_classifiers)==3
        globalStudyInfo.pas_classifiers(2) = 2;
    end
    
else
    if(isempty(globalStudyInfo.pas_classifiers))
        globalStudyInfo.pas_classifiers = [1,1,1];
    elseif length(globalStudyInfo.pas_classifiers)==1
        globalStudyInfo.pas_classifiers(2) = 1;
    elseif length(globalStudyInfo.pas_classifiers)==2
        globalStudyInfo.pas_classifiers(2) = 1;
    elseif length(globalStudyInfo.pas_classifiers)==3
        globalStudyInfo.pas_classifiers(2) = 1;
    end
    
    
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
end

% --- Executes on button press in afterPAS.
function afterPAS_Callback(hObject, eventdata, handles)
% hObject    handle to afterPAS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of afterPAS

globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');

if (get(hObject,'Value') == get(hObject,'Max'))
    if(isempty(globalStudyInfo.pas_classifiers))
        globalStudyInfo.pas_classifiers = [1,1,2];
    elseif length(globalStudyInfo.pas_classifiers)==1
        globalStudyInfo.pas_classifiers(3) = 2;
    elseif length(globalStudyInfo.pas_classifiers)==2
        globalStudyInfo.pas_classifiers(3) = 2;
    elseif length(globalStudyInfo.pas_classifiers)==3
        globalStudyInfo.pas_classifiers(3) = 2;
    end
    
else
    if(isempty(globalStudyInfo.pas_classifiers))
        globalStudyInfo.pas_classifiers = [1,1,1];
    elseif length(globalStudyInfo.pas_classifiers)==1
        globalStudyInfo.pas_classifiers(3) = 1;
    elseif length(globalStudyInfo.pas_classifiers)==2
        globalStudyInfo.pas_classifiers(3) = 1;
    elseif length(globalStudyInfo.pas_classifiers)==3
        globalStudyInfo.pas_classifiers(3) = 1;
    end
    
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
end


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% temporarily not implemented
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.Bl_lva)==1)
        return;
     end
         % Set description
 string1='Oral Cavity';
 string2='Vakkecullar Pit';
 string3='Pos Laryngeal Surface';
 string4='Pyriform Sinuses Level';
 string5='Already Entered Airway';
 title='Enter Location of Bolus at first hyoid';
 
    optionNum = 5;
 stringArray= {string1,string2,string3,string4,string5};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
  globalStudyInfo.questionairePointer=23;
  setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo); 
     
    
    lva_Frame_aa = globalStudyInfo.ValueStorage(20,globalStudyInfo.currentSubswallowPointer); 
       
    if lva_Frame_aa == currentFrameIndex
        dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
    else
       set(handles.uipanel15,'visible','on');
       set(handles.text59,'String','Current Frame is not labeled as lva_Frame, Operation Failed');
    end


% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
      if (lockChecker(handles,globalStudyInfo,globalStudyInfo.lva_Frame)==1)
        return;
      end
    setTextForOtherButtons(globalStudyInfo,currentFrameIndex,20,handles);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
    set(handles.uipanel17,'visible','on');


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'))
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
      if (lockChecker(handles,globalStudyInfo,globalStudyInfo.ramus_mandible)==1)
        return;
      end
    setTextForOtherButtons(globalStudyInfo,currentFrameIndex,18,handles)


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
      if (lockChecker(handles,globalStudyInfo,globalStudyInfo.le_Frame)==1)
        return;
      end
     setTextForOtherButtons(globalStudyInfo,currentFrameIndex,21,handles);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
      if (lockChecker(handles,globalStudyInfo,globalStudyInfo.oneHyoid_Frame)==1)
        return;
      end
    globalStudyInfo.oneHyoid_Frame = currentFrameIndex; 
  
    
    setTextForOtherButtons(globalStudyInfo,currentFrameIndex,19,handles)
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
    set(handles.uipanel16,'visible','on');


% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

   


% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.UES_MAX_Frame)==1)
        return;
      end
   setTextForOtherButtons(globalStudyInfo,floor(get(handles.frameScrubber, 'Value')),26,handles);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));

    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.MPC_Frame)==1)
        return;
      end
  setTextForOtherButtons(globalStudyInfo,floor(get(handles.frameScrubber, 'Value')),27,handles);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.Epivert_Frame)==1)
        return;
      end
  setTextForOtherButtons(globalStudyInfo,floor(get(handles.frameScrubber, 'Value')),30,handles);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);



% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');

 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
 if (lockChecker(handles,globalStudyInfo,globalStudyInfo.lvc_complete)==1)
        return;
      end
currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
SSCount = globalStudyInfo.subSwallowCount;

         %Set title
         title='Laryngeal Vestibule Closure Complete?';
         % Set description
         string1='Complete Closure';
         string2='Incomplete or partial closure';

         optionNum = 2;
        stringArray= {string1,string2};
        subsIdentifier=1;
        propertyIdentifier=1;
        nonAssessable=0;
        globalStudyInfo.questionairePointer=33;
        setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
         errorMsg='This is not the end frame of current Subswallow. Please Record the completeness at the end of this subswallow!';

if SSCount == 1
    if currentFrameIndex ~= globalStudyInfo.subswallowFrame(1,2)
        set(handles.uipanel15,'visible','on');
              set(handles.text59,'String','This is not the end frame of current Subswallow. Please Record the completeness at the end of this subswallow!');
    else
         %Enable Dynamic Questionaire System
         dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 

    end
    
    
elseif SSCount ==2
     if ((currentFrameIndex ~= globalStudyInfo.subswallowFrame(1,2))&&(currentFrameIndex ~= globalStudyInfo.subswallowFrame(2,2)))   
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','This is not the end frame of current Subswallow. Please Record the completeness at the end of this subswallow!');

     else
      dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 
    end
    
elseif SSCount ==3
     if (currentFrameIndex ~= globalStudyInfo.subswallowFrame(1,2))&&(currentFrameIndex ~= globalStudyInfo.subswallowFrame(2,2))&&(currentFrameIndex ~= globalStudyInfo.subswallowFrame(3,2))
         set(handles.uipanel15,'visible','on');      
         set(handles.text59,'String','This is not the end frame of current Subswallow. Please Record the completeness at the end of this subswallow!');
     else
     dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
      
     end
elseif SSCount == 0
    set(handles.uipanel15,'visible','on');      
         set(handles.text59,'String','Total Subswallow Count is zero right now');
end


setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);



% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    subSwallowCount = globalStudyInfo.subSwallowCount;
    
    if subSwallowCount == 1
        globalStudyInfo.subswallowFrameIndex1(2,1) = currentFrameIndex
       
          set(handles.text75,'String',globalStudyInfo.subswallowFrameIndex1(2,1));
        
    elseif subSwallowCount == 2
        globalStudyInfo.subswallowFrameIndex2(2,1) = currentFrameIndex
        
          set(handles.text79,'String',globalStudyInfo.subswallowFrameIndex2(2,1));
    
    elseif subSwallowCount == 3
        globalStudyInfo.subswallowFrameIndex3(2,1) = currentFrameIndex
       
            set(handles.text87,'String',globalStudyInfo.subswallowFrameIndex3(2,1));
        
    end
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    % only record the first three subswallows 
  
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
     globalStudyInfo.multiDraw = 1; 
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
    
    


% --- Executes on button press in Option2.
function Option2_Callback(hObject, eventdata, handles)
% hObject    handle to Option2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%panel_handles = findobj(handles.appFigure,'type','uipanel')
%set(panel_handles, 'parent', handles.unipanel12)
set(handles.uipanel13,'visible','off')
set(handles.uipanel11,'visible','off')
set(handles.uipanel12,'visible','on')


% --- Executes on button press in Option3.
function Option3_Callback(hObject, eventdata, handles)
% hObject    handle to Option3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%panel_handles = findobj(handles.appFigure,'type','uipanel')
%set(panel_handles, 'parent', handles.unipanel13)
set(handles.uipanel12,'visible','off')
set(handles.uipanel11,'visible','off')
set(handles.uipanel13,'visible','on')

% --- Executes on button press in Option1.
function Option1_Callback(hObject, eventdata, handles)
% hObject    handle to Option1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%panel_handles = findobj(handles.appFigure,'type','uipanel')
%set(panel_handles, 'parent', handles.unipanel11)
set(handles.uipanel13,'visible','off')
set(handles.uipanel12,'visible','off')
set(handles.uipanel11,'visible','on')






% --- Executes on button press in pushbutton36.
function pushbutton36_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton36 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
SSCount = globalStudyInfo.subSwallowCount;

if currentFrameIndex == globalStudyInfo.subswallowFrameIndex1(2,1)
    globalStudyInfo. lvc_complete (1,1)= currentFrameIndex;
elseif currentFrameIndex == globalStudyInfo.subswallowFrameIndex2(2,1)
    globalStudyInfo. lvc_complete (2,1)= currentFrameIndex;
elseif currentFrameIndex == globalStudyInfo.subswallowFrameIndex3(2,1)
    globalStudyInfo. lvc_complete (3,1)= currentFrameIndex;
end

globalStudyInfo.TempCompleteness =0;
set(handles.uipanel14,'visible','off')
setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

% --- Executes on button press in pushbutton37.
function pushbutton37_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton37 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.uipanel15,'visible','off')



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
    if(isnan(str2double(get(hObject,'String'))))
        showFeedbackPopup(handles,'Please Enter either 0 or 1',1);
    else
        temp = str2double(get(hObject,'String'));
        globalStudyInfo.TempCompleteness  = temp;
         set(handles.text66, 'String', globalStudyInfo.TempCompleteness);
        showFeedbackPopup(handles,sprintf('Completeness recorded: %d', temp),2);
    end
    
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton39.
function pushbutton39_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    globalStudyInfo.Bl_1hyoid=0;
    set(handles.text64,'String',globalStudyInfo.Bl_1hyoid);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
     set(handles.uipanel16,'visible','off');
% --- Executes on button press in pushbutton40.
function pushbutton40_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    globalStudyInfo.Bl_1hyoid=1;
    set(handles.text64,'String',globalStudyInfo.Bl_1hyoid);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
     set(handles.uipanel16,'visible','off');

% --- Executes on button press in pushbutton41.
function pushbutton41_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton41 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    globalStudyInfo.Bl_1hyoid=2;
    set(handles.text64,'String',globalStudyInfo.Bl_1hyoid);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
     set(handles.uipanel16,'visible','off');
    


% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    globalStudyInfo.Bl_1hyoid=3;
    set(handles.text64,'String',globalStudyInfo.Bl_1hyoid);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
     set(handles.uipanel16,'visible','off');
% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    globalStudyInfo.Bl_1hyoid=4;
    set(handles.text64,'String',globalStudyInfo.Bl_1hyoid);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
     set(handles.uipanel16,'visible','off');
% --- Executes on button press in pushbutton38.
function pushbutton38_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton38 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
    
    % Set description
 string1='Oral Cavity';
 string2='Vakkecullar Pit';
 string3='Pos Laryngeal Surface';
 string4='Pyriform Sinuses Level';
 string5='Already Entered Airway';
 title='Enter Location of Bolus at first hyoid';
 
    optionNum = 5;
 stringArray= {string1,string2,string3,string4,string5};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
  globalStudyInfo.questionairePointer=22;
  setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
      if (lockChecker(handles,globalStudyInfo,globalStudyInfo.Bl_1hyoid)==1)
        return;
      end
    oneHyoid_Frame = globalStudyInfo.ValueStorage(19,globalStudyInfo.currentSubswallowPointer); 
    if oneHyoid_Frame == currentFrameIndex
       % oneHyoid_Frame = globalStudyInfo.ValueStorage(19,globalStudyInfo.currentSubswallowPointer); 
        dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
    else
       % showFeedbackPopup(handles,'Current Frame is not labeled as the first elevation of the larynx, Operation Failed',2);
       
       set(handles.uipanel15,'visible','on');
       set(handles.text59,'String','Current Frame is not labeled as the first elevation of the larynx, Operation Failed');
    end

    


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    globalStudyInfo.Bl_lva = 1;
    set(handles.text65,'String',globalStudyInfo.Bl_lva);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
     set(handles.uipanel17,'visible','off');


% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    globalStudyInfo.Bl_lva = 2;
    set(handles.text65,'String',globalStudyInfo.Bl_lva);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
     set(handles.uipanel17,'visible','off');


% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    globalStudyInfo.Bl_lva = 3;
    set(handles.text65,'String',globalStudyInfo.Bl_lva);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
     set(handles.uipanel17,'visible','off');


% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    globalStudyInfo.Bl_lva = 4;
    set(handles.text65,'String',globalStudyInfo.Bl_lva);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
     set(handles.uipanel17,'visible','off');


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    globalStudyInfo.Bl_lva = 0;
    set(handles.text65,'String',globalStudyInfo.Bl_lva);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
     set(handles.uipanel17,'visible','off');


% --- Executes on button press in pushbutton49.
function pushbutton49_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton49 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.First_Rest_Frame)==1)
        return;
      end
    setTextForOtherButtons(globalStudyInfo,floor(get(handles.frameScrubber, 'Value')),31,handles);
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);



% --- Executes on button press in pushbutton50.
function pushbutton50_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton50 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
         if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.Final_Rest_Frame)==1)
        return;
      end
    FinalSubswallowIndex = globalStudyInfo.subSwallowCount;
    StartFrame = 0;
    EndFrame = 0;
   subswallowFrame = globalStudyInfo.subswallowFrame;
    if FinalSubswallowIndex == 1
        StartFrame =subswallowFrame(1,1);
        EndFrame = subswallowFrameIndex1(1,2);
        
    elseif FinalSubswallowIndex == 2
        StartFrame =subswallowFrame(2,1);
        EndFrame = subswallowFrame(2,2);
    elseif FinalSubswallowIndex == 3
        StartFrame =subswallowFrame(3,1);
        EndFrame = subswallowFrame(3,2);
    end
    
    if(currentFrameIndex<StartFrame || currentFrameIndex > EndFrame)
         % showFeedbackPopup(handles,'Current Frame is not within the range of final subswallow',1);
       set(handles.uipanel15,'visible','on');
       set(handles.text59,'String','Current Frame is not within the range of final subswallow, Operation Failed');
    else
        setTextForOtherButtons(globalStudyInfo,floor(get(handles.frameScrubber, 'Value')),32,handles);
    end
    
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes during object creation, after setting all properties.
 function uipanel13_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to uipanel13 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% figure1 = findobj(0,'type','figure1');
% panel_handles=findobj(figure1,'type','unipanel');
% 
% set(panel_handles,'parent',figure1);
% 


% --- Executes during object creation, after setting all properties.
function frameViewer_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frameViewer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate frameViewer


% --- Executes on button press in pushbutton54.
function pushbutton54_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton54 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.frameViewer;
h = imfreehand_overwrite;
 
%pos = h.getPosition();
hc = get(h,'Children');
XData = []; YData = [];
for ii=1:length(hc)
  x = get(hc(ii),'XData');
  y = get(hc(ii),'YData');
  XData = [XData; x(:)];
  YData = [YData; y(:)];
end

   globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    button_state = get(hObject,'Value');
    allPoints = [0,0];
    
    if (button_state == get(hObject,'Max'))
      %  [x, y] = mygetline(handles.frameViewer);
      %  allPoints = [x,y];
       allPoints = [XData,YData];
       
        showFeedbackPopup(handles,sprintf('Total %d Points Tracked', length(XData)), 2);
        set(hObject,'Value',0);
    end
    
    pcr = 0;
    numPoints = size(allPoints,1);
    allPoints
    
    for i = 1:numPoints
        if numPoints == 1
            disp('Only 1 point selected, PCR will not be calculated');
            break;
        end
        
        % Coordinate based area calculation
        if i == numPoints
            pcr = pcr + ((allPoints(i,1) * allPoints(mod(i+1,numPoints),2)) ...
                - (allPoints(i,2) * allPoints(mod(i+1,numPoints),1)));
            
            pcr = abs(pcr / 2);
            showFeedbackPopup(handles, sprintf('PCR: %-.2f', pcr), 2);
            Utilities.CustomPrinters.printInfo(sprintf('PCR: %-.2f', pcr));
        else
            pcr = pcr + ((allPoints(i,1) * allPoints(i+1,2)) ...
                - (allPoints(i,2) * allPoints(i+1,1)));
        end
    end
    
    if numPoints>2
        globalStudyInfo.pcr_min_points = allPoints;
        globalStudyInfo.pcr_min_area = pcr;
        handles.pcr_min_area_text.String = num2str(pcr);
        setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
        delete(h);
    end


% --- Executes on button press in pushbutton55.
function pushbutton55_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton55 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    subSwallowCount = globalStudyInfo.subSwallowCount;
    if(subSwallowCount==0)
    globalStudyInfo.subSwallowCount = subSwallowCount+1;
    end
    globalStudyInfo.subswallowFrame(1,1) = currentFrameIndex;
    globalStudyInfo.start_frame=currentFrameIndex;
    set(handles.text74,'String',globalStudyInfo.subswallowFrame(1,1));
    set(handles.text75,'String',0);
    set(handles.start_frame_text, 'String', globalStudyInfo.subswallowFrame(1,1) );


    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes on button press in pushbutton56.
function pushbutton56_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton56 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    subSwallowCount = globalStudyInfo.subSwallowCount;
    
    %globalStudyInfo.subSwallowCount = subSwallowCount+1;
    globalStudyInfo.subswallowFrame(1,2) = currentFrameIndex;
    globalStudyInfo.end_frame = currentFrameIndex;
    set(handles.text75,'String',globalStudyInfo.subswallowFrame(1,2));
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);



% --- Executes on button press in pushbutton57.
function pushbutton57_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton57 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    subSwallowCount = globalStudyInfo.subSwallowCount;
    
    if(subSwallowCount==1)
    globalStudyInfo.subSwallowCount = subSwallowCount+1;
    end
    globalStudyInfo.subswallowFrame(2,1) = currentFrameIndex;
    set(handles.text78,'String',globalStudyInfo.subswallowFrame(2,1));
    set(handles.text79,'String',0);
     set(handles.end_frame_text, 'String', globalStudyInfo.subswallowFrame(2,1));
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes on button press in pushbutton58.
function pushbutton58_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton58 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    subSwallowCount = globalStudyInfo.subSwallowCount;
    
   % globalStudyInfo.subSwallowCount = subSwallowCount+1;
    globalStudyInfo.subswallowFrame(2,2) = currentFrameIndex;
    set(handles.text79,'String',globalStudyInfo.subswallowFrame(2,2));
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes on button press in pushbutton59.
function pushbutton59_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton59 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
   currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    subSwallowCount = globalStudyInfo.subSwallowCount;
    if(subSwallowCount==2)
    globalStudyInfo.subSwallowCount = subSwallowCount+1;
    end
    globalStudyInfo.subswallowFrame(3,1) = currentFrameIndex;
    set(handles.text86,'String',globalStudyInfo.subswallowFrame(3,1));
    set(handles.text87,'String',0);
    set(handles.hold_position_text, 'String', globalStudyInfo.subswallowFrame(3,1));
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes on button press in pushbutton60.
function pushbutton60_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton60 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  currentFrameIndex = floor(get(handles.frameScrubber, 'Value'));
    globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
   
    subSwallowCount = globalStudyInfo.subSwallowCount;
    
    %globalStudyInfo.subSwallowCount = subSwallowCount+1;
    globalStudyInfo.subswallowFrame(3,2) = currentFrameIndex;
    set(handles.text87,'String',globalStudyInfo.subswallowFrame(3,2));
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes during object creation, after setting all properties.
 function uipanel11_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to uipanel11 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% figure1 = findobj(0,'type','figure1');
% panel_handles=findobj(figure1,'type','unipanel');
% set(panel_handles,'parent',figure1);
% 
% 
% % --- Executes during object creation, after setting all properties.
 function uipanel12_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to uipanel12 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% figure1 = findobj(0,'type','figure1');
% panel_handles=findobj(figure1,'type','unipanel');
% set(panel_handles,'parent',figure1);


% --- Executes on button press in pushbutton61.
function pushbutton61_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton61 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% hObject    handle to valarea_toggle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of valarea_toggle

handles.frameViewer;
h = imline;

%pos = h.getPosition();
hc = get(h,'Children');
XData = []; YData = [];
for ii=1:length(hc)
  x = get(hc(ii),'XData');
  y = get(hc(ii),'YData');
  XData = [XData; x(:)];
  YData = [YData; y(:)];
end

   globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
    button_state = get(hObject,'Value');
    allPoints = [0,0];
    
       hList =globalStudyInfo.ref_Hlist;
       hList = [hList;h];
       globalStudyInfo.ref_Hlist=hList;
       setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

  
  





% --- Executes on button press in pushbutton75.
function pushbutton75_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton75 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
 
 
 globalStudyInfo.questionairePointer=1;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
        if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.Lip_C)==1)
        return;
      end
% Set title
title = 'Lip Closure';
 % Set description
 string1 = 'No Labial Escape';
 string2 = 'Interlabial Escape; No progression to anterior lip';
 string3 = 'Escape from interlabial space or lateral juncture;no extension beyond vermilion border';
 string4 = 'Escape Progressing to mid-chin';
 string5 = 'Escape beyond mid-chin';

 optionNum = 5;
 stringArray= {string1,string2,string3,string4,string5};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 
 
 
 


% --- Executes on button press in pushbutton76.
function pushbutton76_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton76 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=2;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.HP)==1)
        return;
      end

 title='Hold Position/Tongue Control';
 
 % Set description
string1='Cohesive bolus between tongue to palatal seal';
 string2 = 'Escape to lateral buccal cavity/floor of mouth';
 string3 = 'Posterior escape of less than half of bolus';
 string4 = 'posterior escape of greater than half of bolus';
 %string5='Lip Closure');
 
 
 
 optionNum = 4;
 stringArray= {string1,string2,string3,string4};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 


% --- Executes on button press in pushbutton77.
function pushbutton77_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton77 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
 
  globalStudyInfo.questionairePointer=3;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.BP)==1)
        return;
      end

title = 'Bolus Preparation/Mastication';
 
 % Set description
string1 = 'Timely and efficient chewing and mashing';
string2='Slow prolonged chewing/mashing with complete re-collection';
string3 = 'Disorganized chewing/mashing with solid pieces of bolus unchewed';
string4='Minimal chewing/mashing with majority of bolus unchewed';
 %string5='Lip Closure');
   optionNum = 4;
 stringArray= {string1,string2,string3,string4};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=1;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 


% --- Executes on button press in pushbutton78.
function pushbutton78_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton78 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=4;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
 
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.BT)==1)
        return;
      end
 title='Bolus Transport/Lingual Motion';
 
 % Set description
 string1='Brisk Tongue Motion';
 string2='Delayed initiation of tongue motion';
 string3='Slowed tongue motion';
 string4='Repetitive/disorganized tongue motion';
 string5='Minimal to no tongue motion';
 
 
 
 
optionNum = 5;
 stringArray= {string1,string2,string3,string4,string5};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 


% --- Executes on button press in pushbutton79.
function pushbutton79_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton79 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=6;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
 
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.IPS)==1)
        return;
      end
 title='Initiation of the Pharyngeal Swallow';
 
 % Set description
 string1='Bolus head at posterior angle of ramus';
 string2='Bolus head in valleculae';
 string3='Bolus head at posterior laryngeal surface of epiglottis';
 string4='Bolus head in pyriforms';
 string5='No Visible initiation';
 
 
 
 
 
optionNum = 5;
 stringArray= {string1,string2,string3,string4,string5};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 


% --- Executes on button press in pushbutton80.
function pushbutton80_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton80 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=7;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.SPE)==1)
        return;
      end

title='Soft Palate Elevation';

% Set description
 string1='No bolus between soft palate and pharyngeal wall';
 string2='Trace column of contrast or air between SP and PW';
 string3='Escape to nasopharynx';
 string4='Escape to nasal cavity';
 string5='Escape to nostril with/without emission';
 optionNum = 5;
 stringArray= {string1,string2,string3,string4,string5};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 

% --- Executes on button press in pushbutton81.
function pushbutton81_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton81 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


     

 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
 
  globalStudyInfo.questionairePointer=8;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
 
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.LE)==1)
        return;
      end
set(handles.uipanel29, 'visible', 'on');
title='Laryngeal Elevation';

% Set description
 string1='Complete superior movement of thyroid cartilage with complete approximation of arytenoids to epiglottic petiole';
 string2='Partial superior movement of thyroid cartilage with partial approximation of arytenoids to epiglottic petiole';
 string3='Minimal superior movement of thyroid cartilage with minimal approxiamation of aryntenoids to epiglottic petiole';
 string4='No superior movement of thyroid cartilage';
 %string5='Lip Closure');
 
 
optionNum = 4;
 stringArray= {string1,string2,string3,string4};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 


% --- Executes on button press in pushbutton82.
function pushbutton82_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton82 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=9;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.HM)==1)
        return;
      end
title='Anterior Hyoid Motion';

% Set description
 string1='Complete anterior movement';
 string2='Partial anterior movement';
 string3='No anterior movement';
 %string4='Lip Closure');
 %string5='Lip Closure');
 
 
 
 
optionNum = 3;
 stringArray= {string1,string2,string3};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 



% --- Executes on button press in pushbutton83.
function pushbutton83_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton83 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=10;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.EM)==1)
        return;
      end
title='Epiglottic Movement';

% Set description
 string1='Complete Inversion';
 string2='Partial Inversion';
 string3='No Inversion';

 optionNum = 3;
 stringArray= {string1,string2,string3};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 

 
 


% --- Executes on button press in pushbutton84.
function pushbutton84_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton84 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=11;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.LC)==1)
        return;
      end

title='Laryngeal Closure';

% Set description
 string1='Complete;no air/contrast in laryngeal vestibule';
 string2='Incomplete; narrow column air/constrast in laryngeal vestibule';
 string3='None; wide column air/contrast in laryngeal vestibule';
 %string4='Lip Closure');
% string5='Lip Closure');
 
 
 
 
 
optionNum = 3;
 stringArray= {string1,string2,string3};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 


% --- Executes on button press in pushbutton85.
function pushbutton85_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton85 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=12;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.PSW)==1)
        return;
      end

title='Pharyngeal Stripping Wave';

% Set description
 string1='Present-complete';
 string2='Present-diminished';
 string3='Absent';
 %string4='Lip Closure');
% string5='Lip Closure');
 
optionNum = 3;
 stringArray= {string1,string2,string3};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 



% --- Executes on button press in pushbutton86.
function pushbutton86_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton86 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
 
  globalStudyInfo.questionairePointer=13;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.PC)==1)
        return;
      end
set(handles.uipanel29, 'visible', 'on');
set(handles.text211,'String','Pharyngeal Contraction; Component Not Assessable');


 set(handles.uipanel30,'visible','off');
 set(handles.uipanel31,'visible','off');
 set(handles.uipanel32,'visible','off');
 set(handles.uipanel33,'visible','off');
 set(handles.uipanel34,'visible','off');
 set(handles.uipanel35,'visible','on');


% --- Executes on button press in pushbutton87.
function pushbutton87_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton87 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=14;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.PESO)==1)
        return;
      end

title='PES Opening';

% Set description
 string1='Complete distension and complete duration; no obstruction of flow';
 string2='Partial distension/partial duration; partial obstruction of flow';
 string3='Minimal distension/minimal duration; marked obstruction of flow';
 string4='No distension with total obstruction of flow';
 %string5='Lip Closure');
 
 
 
 
 optionNum = 4;
 stringArray= {string1,string2,string3,string4};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 



% --- Executes on button press in pushbutton88.
function pushbutton88_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton88 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
 
  globalStudyInfo.questionairePointer=15;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.TBR)==1)
        return;
      end

title='Tongue Base Retraction';

% Set description
 string1='No Contrast between tongue base and posterior pharyngeal wall';
 string2='Trace column of contrast or air between TB and PW';
 string3='Narrow column of contrast or air between TB and PW';
 string4='Wide column of contrast or air between TB and PW';
 string5='No visible posterior motion of TB';
 
 
 
 
optionNum = 5;
 stringArray= {string1,string2,string3,string4,string5};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 



% --- Executes on button press in pushbutton89.
function pushbutton89_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton89 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=16;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.PR)==1)
        return;
      end

title='Pharyngeal Residue';

% Set description
 string1='Complete pharyngeal clearance';
 string2='Trace residue within or on pharyngeal structures';
 string3='Collection of residue within or on pharyngeal structures';
 string4='Majority of contrst within or on pharyngeal structures';
 string5='Minimal to no pharyngeal clearance';
 
 
 
 
 
optionNum = 5;
 stringArray= {string1,string2,string3,string4,string5};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 



% --- Executes on button press in pushbutton90.
function pushbutton90_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton90 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=17;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
                end
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.EC)==1)
        return;
      end
title='Esophageal Clearance Upright Position';

% Set description
 string1='Complete clearance; esophageal coating';
 string2='Esophageal retention';
 string3='Esophageal retention with retrograde flow below pharyngoesophageal segment(PES)';
 string4='Esophageal retention with retrograde flow through PES';
 string5='Minimal to no esophageal clearance';
 
 
 
 
 
optionNum = 5;
 stringArray= {string1,string2,string3,string4,string5};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=1;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 



% --- Executes on button press in pushbutton92.
function pushbutton92_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton92 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
  globalStudyInfo.questionairePointer=5;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 
        if(globalStudyInfo.labelSubswallowProcess==1)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String','Subswallow labeling is not done. Please labeling First');
        return;
        end
        
                if(globalStudyInfo.currentSubswallowPointer==0)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"Current Frame is not in any valid Subswallow Range");
        return; 
        end
        
        
     if (lockChecker(handles,globalStudyInfo,globalStudyInfo.OR)==1)
        return;
      end

title='Oral Residue';

% Set description
 string1='Complete Oral Clearance';
 string2='Trace Residue Lining Oral Structures';
 string3='Residue Collection on Oral Structures';
 string4='Majority of Bolus Remaining';
 string5='Minimal to no clearance';
 
 
 
 optionNum = 5;
 stringArray= {string1,string2,string3,string4,string5};
 subsIdentifier=1;
 propertyIdentifier=1;
 nonAssessable=0;
 dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier);
 



% --- Executes on button press in pushbutton93.
function pushbutton93_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton93 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
         
         globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
         currentSubswallowPointer=globalStudyInfo.currentSubswallowPointer;
         questionairePointer=globalStudyInfo.questionairePointer;
         if(questionairePointer==0)
             
             return;
         end
         text = globalStudyInfo.subswallow3dTextSet(currentSubswallowPointer,questionairePointer);
         
         %set Text
         set(text,'String',"0");
         set(text, 'ForegroundColor', 'y' );
         globalStudyInfo.ValueStorage(questionairePointer,currentSubswallowPointer)=0;
         setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

set(handles.uipanel29, 'visible', 'off');


% --- Executes on button press in pushbutton94.
function pushbutton94_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton94 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
         globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
         currentSubswallowPointer=globalStudyInfo.currentSubswallowPointer;
         questionairePointer=globalStudyInfo.questionairePointer;
         if(questionairePointer==0)
             
             return;
         end
          text = globalStudyInfo.subswallow3dTextSet(currentSubswallowPointer,questionairePointer);
         
         
         %set Text
         set(text,'String',"1");
         set(text, 'ForegroundColor', 'y' );
         globalStudyInfo.ValueStorage(currentSubswallowPointer,questionairePointer)=1;
         setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
set(handles.uipanel29, 'visible', 'off');


% --- Executes on button press in pushbutton95.
function pushbutton95_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton95 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
         globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
         currentSubswallowPointer=globalStudyInfo.currentSubswallowPointer;
         questionairePointer=globalStudyInfo.questionairePointer;
         if(questionairePointer==0)
             
             return;
         end
        text = globalStudyInfo.subswallow3dTextSet(currentSubswallowPointer,questionairePointer);
         
         
         %set Text
         set(text,'String',"2");
         set(text, 'ForegroundColor', 'y' );
         globalStudyInfo.ValueStorage(currentSubswallowPointer,questionairePointer)=2;
         setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
set(handles.uipanel29, 'visible', 'off');


% --- Executes on button press in pushbutton96.
function pushbutton96_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton96 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
         globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
         currentSubswallowPointer=globalStudyInfo.currentSubswallowPointer;
         questionairePointer=globalStudyInfo.questionairePointer;
         if(questionairePointer==0)
             
             return;
         end
          text = globalStudyInfo.subswallow3dTextSet(currentSubswallowPointer,questionairePointer);
         
         
         %set Text
         set(text,'String',"3");
         set(text, 'ForegroundColor', 'y' );
         globalStudyInfo.ValueStorage(currentSubswallowPointer,questionairePointer)=3;
         setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
set(handles.uipanel29, 'visible', 'off');


% --- Executes on button press in pushbutton97.
function pushbutton97_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton97 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
         globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
         currentSubswallowPointer=globalStudyInfo.currentSubswallowPointer;
         questionairePointer=globalStudyInfo.questionairePointer;
         if(questionairePointer==0)
             
             return;
         end
       text = globalStudyInfo.subswallow3dTextSet(currentSubswallowPointer,questionairePointer);
         
         
         %set Text
         set(text,'String',"4");
         set(text, 'ForegroundColor', 'y' );
         globalStudyInfo.ValueStorage(currentSubswallowPointer,questionairePointer)=4;
         setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
set(handles.uipanel29, 'visible', 'off');

% --- Executes on button press in pushbutton98.
function pushbutton98_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton98 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
         globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
         currentSubswallowPointer=globalStudyInfo.currentSubswallowPointer;
         questionairePointer=globalStudyInfo.questionairePointer;
         
         if(questionairePointer==0)
             
             return;
         end
         text = globalStudyInfo.subswallow3dTextSet(currentSubswallowPointer,questionairePointer);
         
         
         %set Text
         set(text,'String',"-1");
         set(text, 'ForegroundColor', 'y' );
         globalStudyInfo.ValueStorage(currentSubswallowPointer,questionairePointer)=-1;
         setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
set(handles.uipanel29, 'visible', 'off');

%--this function enbale question system
%variables:
%optioinNum- scores from 0-4, how many options should be enabled?
%optionStringArray-subtitles or ddescription for each option
%nonAssessableEnabled-should there be an non-assessable option?
%subswallowIdentifier-which subswallow you are indicating? if 1, enabled,
%disabled otherwise
%PropertyIdentifier-used to describe property
function dynamicQuestion(handles,title, optionNum,stringArray,nonAssessable,subsIdentifier,propertyIdentifier)
         %Enable Dynamic Questionaire System
         set(handles.uipanel29, 'visible', 'on');
         %Set title
         set(handles.text211,'String',title);
         
       

         
         if (nonAssessable==1)
              set(handles.uipanel35,'visible','on');
             
         else
              set(handles.uipanel35,'visible','off');
         end
         switch optionNum
             case 1
                 set(handles.uipanel30,'visible','on');
                 set(handles.uipanel31,'visible','off');
                 set(handles.uipanel32,'visible','off');
                 set(handles.uipanel33,'visible','off');
                 set(handles.uipanel34,'visible','off');
              
                 set(handles.text212,'String',stringArray);
                 %set(handles.text213,'String','Incomplete or partial closure');
                 
             
             case 2
                 set(handles.uipanel30,'visible','on');
                 set(handles.uipanel31,'visible','on');
                 set(handles.uipanel32,'visible','off');
                 set(handles.uipanel33,'visible','off');
                 set(handles.uipanel34,'visible','off');
                          % Set description
                 set(handles.text212,'String',stringArray(1,1));
                 set(handles.text213,'String',stringArray(1,2));
                 display '======whats in string array?case2';
                 stringArray
                 
                 display '======whats in string array?case2******';
                 
                 
             case 3
                 set(handles.uipanel30,'visible','on');
                 set(handles.uipanel31,'visible','on');
                 set(handles.uipanel32,'visible','on');
                 set(handles.uipanel33,'visible','off');
                 set(handles.uipanel34,'visible','off');
                 
                 set(handles.text212,'String',stringArray(1,1));
                 set(handles.text213,'String',stringArray(1,2));
                 set(handles.text214,'String',stringArray(1,3));
                                  display '======whats in string array?case3';
                                  stringArray
                 
                 display '======whats in string array?case3******';

                 
             case 4
                 set(handles.uipanel30,'visible','on');
                 set(handles.uipanel31,'visible','on');
                 set(handles.uipanel32,'visible','on');
                 set(handles.uipanel33,'visible','on');
                 set(handles.uipanel34,'visible','off');
                 
                 set(handles.text212,'String',stringArray(1,1));
                 set(handles.text213,'String',stringArray(1,2));    
                 set(handles.text214,'String',stringArray(1,3));
                 set(handles.text215,'String',stringArray(1,4));
                                  display '======whats in string array?case4';
                                  stringArray
                 
                 display '======whats in string array?case4******';
                 
             case 5
                 set(handles.uipanel30,'visible','on');
                 set(handles.uipanel31,'visible','on');
                 set(handles.uipanel32,'visible','on');
                 set(handles.uipanel33,'visible','on');
                 set(handles.uipanel34,'visible','on');  
                 set(handles.text212,'String',stringArray(1,1));
                 set(handles.text213,'String',stringArray(1,2));
                 set(handles.text214,'String',stringArray(1,3));
                 set(handles.text215,'String',stringArray(1,4));    
                 set(handles.text216,'String',stringArray(1,5));        
         end
        
         
         
function A=lockChecker(handles,globalStudyInfo,propertyIndex)
        
        lockArray = globalStudyInfo.PropertyLock;
        
        if (lockArray(propertyIndex,1)==1) 
            A=1;
        errorMsg='';
        if (globalStudyInfo.mode==1)
        errorMsg= 'This property is locked and not accessable due to unfnished subswallow labeling';
        elseif (globalStudyInfo.mode==0&&globalStudyInfo.subSwallowCount==0)
            errorMsg = 'subswallow Count is 0, please finish labeling subswallow first';
        else
            errorMsg='This property is locked';
        end
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',errorMsg);
        else
           A=0;
        end
        
      
   
     
        
        
        

     
    
    



        


% --- Executes on button press in pushbutton99.
function pushbutton99_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton99 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
globalStudyInfo.PropertyLock = ones(33,1);
textSet=globalStudyInfo.subswallow3dTextSet;
[a,b]=size(textSet);
for k=1:a
for m= 1:b
changeTextColorRed(textSet(k,m));
set(textSet(k,m),'String',m);
end
end

 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 

 



% --- Executes on button press in pushbutton100.
function pushbutton100_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
globalStudyInfo.PropertyLock = zeros(33,1);
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
globalStudyInfo.PropertyLock = ones(33,1);
textSet=globalStudyInfo.subswallow3dTextSet;
[a,b]=size(textSet);

for m= 1:b
      set(textSet(k,m), 'ForegroundColor', 'k' );
        
end

 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

 
       
         
        
  
 function changeTextColorRed(handlestext)
     set(handlestext,'ForegroundColor','m');
     


% --- Executes on button press in pushbutton101.
function pushbutton101_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton101 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
subSwallowCount= globalStudyInfo.subSwallowCount;


% check if valid subswallow??
if(subSwallowCount==0)
    set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"no subswallow is labeled");
        return;

elseif(subSwallowCount==1)
    if(globalStudyInfo.subswallowFrame(1,2)==0)
         set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"end frame of subswallow 1 is not labeled");
        return;
    end
    
    if(globalStudyInfo.subswallowFrame(1,2)~=globalStudyInfo.vfVideoStructure.numFrames)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"end frame of subswallow1 does not equal to last frame index,this video has more than 1 subswallow");
        return;
    end
elseif(subSwallowCount==2)
        if(globalStudyInfo.subswallowFrame(1,2)==0)
         set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"end frame of subswallow 1 is not labeled");
        return;
        end
        
         if(globalStudyInfo.subswallowFrame(2,2)==0)
         set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"end frame of subswallow 2 is not labeled");
        return;
         end
    
    
     if(globalStudyInfo.subswallowFrame(2,2)~=globalStudyInfo.vfVideoStructure.numFrames)
        set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"end frame of subswallow2 does not equal to last frame index,this video has more than 2 subswallow");
        return; 
    end
elseif(subSwallowCount==3)
    if(globalStudyInfo.subswallowFrame(1,2)==0)
         set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"end frame of subswallow 1 is not labeled");
        return;
    end
        
         if(globalStudyInfo.subswallowFrame(2,2)==0)
         set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"end frame of subswallow 2 is not labeled");
        return;
         end
        
        if(globalStudyInfo.subswallowFrame(3,2)==0)
         set(handles.uipanel15,'visible','on');
        set(handles.text59,'String',"end frame of subswallow 3 is not labeled");
        return;
        end
    
     if(globalStudyInfo.subswallowFrame(3,2)~=globalStudyInfo.vfVideoStructure.numFrames)
         
    end
end

% unlock subswallow labeling process

globalStudyInfo.labelSubswallowProcess=0;


set(handles.uipanel18, 'visible', 'off');
set(handles.uipanel36,'visible','on');
setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

% --- Executes on button press in pushbutton104.
function pushbutton104_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton104 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
globalStudyInfo.labelSubswallowProcess=1;

currentSubswallowPointer = globalStudyInfo.currentSubswallowPointer;

% starting with 0, increment before use






set(handles.uipanel18, 'visible', 'on');
set(handles.uipanel36,'visible','off');

setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

function disableAllWriteAbleText(globalStudyInfo)
textSet=globalStudyInfo.subswallow3dTextSet;
  [a,b]=size(textSet);

for m= 1:b
for k=1:a
set(textSet(k,m), 'ForegroundColor', 'k' );
end
end

function changeCurrentWriteAbleText(globalStudyInfo)
currentPropertyTextPointer = globalStudyInfo.currentSubswallowPointer;
 textSet=globalStudyInfo.subswallow3dTextSet;
[a,b]=size(textSet);

for m= 1:b
for k=1:a
set(textSet(k,m), 'ForegroundColor', 'k' );
end
end

for i = 1:b
  
    set(textSet(currentPropertyTextPointer,i), 'ForegroundColor', 'm' );
end

function setTextForOtherButtons(globalStudyInfo,currentFrameIndex,textIndex,handles)
   
    currentSwallow = globalStudyInfo.currentSubswallowPointer
   
    text=globalStudyInfo.subswallow3dTextSet(currentSwallow,textIndex);
    set(text,'ForegroundColor','g');
    set(text,'String',currentFrameIndex);
    
    globalStudyInfo.ValueStorage(textIndex,currentSwallow)=currentFrameIndex;
    if(currentSwallow ==1) 
        switch textIndex
            case 18 %ramus_mandible; --- Bolus past mandible 18
                globalStudyInfo.ramus_mandible=currentFrameIndex;
            case 19 % hyoid_burst;---- 19 one hyoid frame
                globalStudyInfo.hyoid_burst=currentFrameIndex;
            case 21 % laryngeal_jump;  laryngeal elevation -- LE frame 21
                globalStudyInfo.laryngeal_jump=currentFrameIndex;
            case 24 % ues_opening;  24
                globalStudyInfo.ues_opening=currentFrameIndex;
            case 25 % ues_closure; 25
                globalStudyInfo.ues_closure=currentFrameIndex;
                
            case 28 %lvc_onset;
                globalStudyInfo.lvc_onset=currentFrameIndex;
            case 29 % lvc_offset; ---- 29
                globalStudyInfo.lvc_offset=currentFrameIndex;
            case 31 % at_rest; ---- 31
                globalStudyInfo.at_rest=currentFrameIndex;
            
            
        end
            
        
        
    end
    

% ramus_mandible; --- Bolus past mandible 18
% hyoid_burst;---- 19 one hyoid frame
% ues_closure; 25
% at_rest; ---- 31
%
% 
% lvc_onset; -28
% lvc_offset;  --- 29
% laryngeal_jump;  laryngeal elevation -- LE frame 21
% ues_opening;  24
    
    
    
    
    
    
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

%unused
function pushbutton23_CreateFcn(hObject, eventdata, handles)


% --- Executes on button press in pushbutton105.
function pushbutton105_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton105 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
set(handles.uipanel37,'visible','off');
globalStudyInfo.mode=-1;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);

function frameFileParsing (file,handles,userNum)
  subswallowArray=zeros(3,2);
  propertyArray=zeros(33,3);
 FrameErrorQueue=getappdata(handles.appFigure, 'FrameErrorQueue');
    
    
fid = fopen(file);
tline = fgets(fid); 
index=0;
sCount=0;


disp(tline)
tline = fgets(fid);

    
  sCount = str2num(tline)
  
  
  %initialize total SubswallowCount;
  %set(handles.text222,'String',)
        for k = 1:sCount
            tline=fgets(fid);
              c =  str2num(tline);
                disp('subswallow');
                disp(c);
            subswallowArray(k,1)=c(1,1);
            subswallowArray(k,2)=c(1,2);  %% tline(1,2) is ,
        end


   tline=fgets(fid);
   
while ischar(tline) 

        for j = 1:32
             disp('Parsing value');
               disp(tline);
           c =  str2num(tline);
 
            for k=1:sCount
      
            propertyArray(j,k)=c(1,k);
            
            end
             tline=fgets(fid);
        end
        
     tline = fgets(fid);
     index=index+1;
    
end

fclose(fid);
if(userNum==1)
    FrameErrorQueue.subswallow_user1=subswallowArray;
    FrameErrorQueue.valueStorage_user1=propertyArray;
else
    FrameErrorQueue.subswallow_user2=subswallowArray;
    FrameErrorQueue.valueStorage_user2=propertyArray; 
end
setappdata(handles.appFigure,'FrameErrorQueue',FrameErrorQueue);



% --- Executes on button press in pushbutton106.
function pushbutton106_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton106 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
disp('cross validate call back');
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
set(handles.uipanel37,'visible','off');
globalStudyInfo.mode=1;
 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
 
 file1 = uigetfile('*.txt');
 file2 = uigetfile('*.txt');
 %file name validation in the future

 frameFileParsing (file1,handles,1);
 frameFileParsing (file2,handles,2);
  FrameErrorQueue=getappdata(handles.appFigure, 'FrameErrorQueue');
  ssArray1 = FrameErrorQueue.subswallow_user1;
  ssArray2=FrameErrorQueue.subswallow_user2;
  property1=FrameErrorQueue.valueStorage_user1;
  property2=FrameErrorQueue.valueStorage_user2;
  subswallowError = FrameErrorQueue.subswallowError;
  ErrorQueue = FrameErrorQueue.ErrorQueue;
  actualSubswallow = FrameErrorQueue.actualSubswallow;
  % check Subswallow First;
  i = 0;
  for k = 1:3
      for j =1:2
          if(ssArray1(k,j)~=ssArray2(k,j))  
             i=i+1; 
             subswallowError(i,1)=k;
             subswallowError(i,2)=j;
          % if equal, 
          else 
              actualSubswallow(k,j)=ssArray1(k,j);
          end
      end
  end
  
  %%%% ???????
  % 1-17 survey
  i=0;
  for k = 1:17
      for j =1:3
          if(property1(k,j)~=property2(k,j))
              i=i+1;
              ErrorQueue(i,1)=k;
              ErrorQueue(i,2)=j;
          else
              globalStudyInfo.ValueStorage(k,j)=property1(k,j);
            text=globalStudyInfo.subswallow3dTextSet(j,k);
            set(text,'ForegroundColor','g');
            set(text,'String',globalStudyInfo.ValueStorage(j,k));
          end
      end
  end
  % 18-32 frames 

 
 

% --- Executes on button press in pushbutton107.
function pushbutton107_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton107 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
resume='resume call back'
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
set(handles.uipanel37,'visible','off');
globalStudyInfo.mode=0;

    %Checking if a results file exists
  name = globalStudyInfo.fileName;
    AuthoName='Author Name is '
    Author = globalStudyInfo.Author
    
     valueDataFileName =strcat(name,'_UnValidated_',Author,'.txt');
if(globalStudyInfo.mode==0)
    
    if (exist(valueDataFileName, 'file'))
        
        fid = fopen(valueDataFileName);

tline = fgets(fid); 
index=0;
sCount=0;


disp(tline)
 tline = fgets(fid);

    
  sCount = str2num(tline)
  
  globalStudyInfo.subSwallowCount=sCount;
  
  %initialize total SubswallowCount;
  %set(handles.text222,'String',)
        for k = 1:sCount
            tline=fgets(fid);
        
              c =  str2num(tline);
                disp('subswallow');
                disp(c);
            globalStudyInfo.subswallowFrame(k,1)=c(1,1);
            globalStudyInfo.subswallowFrame(k,2)=c(1,2);  %% tline(1,2) is ,
            if(k==1)
             set(handles.text74,'String',c(1,1));   
             set(handles.text75,'String',c(1,2));   
            elseif(k==2)
             set(handles.text78,'String',c(1,1));   
             set(handles.text79,'String',c(1,2));
            elseif(k==3)
             set(handles.text86,'String',c(1,1));   
             set(handles.text87,'String',c(1,2));
            end
        end


 tline=fgets(fid);
  subswallow3dTextSet = globalStudyInfo.subswallow3dTextSet;
while ischar(tline) 
    disp('within while loop =========')
    disp(tline)
        for j = 1:32
             disp('Parsing value');
               disp(tline);
           c =  str2num(tline);
 
            for k=1:sCount
      
            globalStudyInfo.ValueStorage(j,k)=c(1,k);
            text=globalStudyInfo.subswallow3dTextSet(k,j);
            set(text,'ForegroundColor','g');
            set(text,'String',globalStudyInfo.ValueStorage(j,k));
            
            end
             tline=fgets(fid);
        end
        
     tline = fgets(fid);
     index=index+1;
    
end

fclose(fid);
     
    
    end
end

 setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);
   
   

function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double
%         globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
%     
globalStudyInfo = getappdata(handles.appFigure, 'globalStudyInfo');
textCallBack='Enter name call back'
     if(isnan(get(hObject,'String')))
         showFeedbackPopup(handles,'Please Enter Valid String',1);
         testString='stuck in set name??'
     else
         Author = get(hObject,'String')
         globalStudyInfo.Author = Author;
         showFeedbackPopup(handles,sprintf('Author Name Saved: %s', Author),2);
     end
     
    
    setappdata(handles.appFigure, 'globalStudyInfo', globalStudyInfo);


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton109.
function pushbutton109_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton110.
function pushbutton110_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
