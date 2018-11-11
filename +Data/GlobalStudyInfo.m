classdef GlobalStudyInfo < handle
   properties
       
       Author='Default';
       fileName='default';
       % Text Color Set
       subswallow1TextSet= [];
       subswallow2TextSet=[];
       subswallow3TextSet=[];
       
       subswallow3dTextSet=[];
       
       
       % Mode
       mode = -3; %mode = -1 start new, mode=0 resume, mode=1, cross validate;
       labelSubswallowProcess=1; % if currently labeling process, no operations allowed;
       PropertyLock = zeros(32,1);
      % propertyTextPointer=zeros(32,1);
       ValueStorage = zeros(32,3);
       currentSubswallowPointer=0;
       questionairePointer=0;
       
       propertyMap;
       
       
      %These are all classes I made
      vfVideoStructure;
      studyImageProcessingInfo;
      studyCoordinates;
      
      %Frame Descriptor Ordering
      
      
      %Kinematic Frame Numbers
      hold_position;
   
      at_rest;
      start_frame;
      end_frame;
      lvc_onset;
      
      
      
      %UES Distension Points
      ues_point1;
      ues_point2;
      
      %Calibration for SI units
      si_point1;
      si_point2;
      pixelspercm;
      
      %UES distension
      uesd_points;
      uesd_dist;
      
      %NRRS valleculae - val res = residue in valleculae
      nrrs_valres_points;
      nrrs_valres_area;
      nrrs_totalval_points;
      nrrs_totalval_area;
      
      %NRRS piriform - piri res = residue in piriform recess
      nrrs_pirires_points;
      nrrs_pirires_area;
      nrrs_totalpiri_points;
      nrrs_totalpiri_area;
      
      %Calibration for PCR
      pcr_min_points;
      pcr_min_area;
      pcr_max_points;
      pcr_max_area;
      
      %Penetration Aspiration Ratio
      pas;
      pas_classifiers;
      
      %Global sessoin info
      currentlyTrackedLandmark = Data.JoveLandmarks.Mandible;
      
      %These are MATLAB provided classes I will use. These 2 are not being
      %used
      vfTracker;
      harrisCorner
      
      %Settings to use for the KLT Tracker
      kltNumPyramidLevels = 3;
      kltBlockSize = [11 11];
      kltMaxIterations = 100;
      
      %These will supercede he above 3 parameters
      harrisFeatureDetectorParameters = ImageProcessing.HarrisFeatureDetectorParameters;
      kltTrackerParameters = ImageProcessing.KLTParameters;
      
      % these are variables associated with subswallow counts
      % three frame index array, first element is start frame, second
      % element is end frame
      subSwallowCount=0;
      subswallowFrame=zeros(3,2);
      subswallowFrameIndex1 = zeros(2,1);
      subswallowFrameIndex2 = zeros(2,1);
      subswallowFrameIndex3 = zeros(2,1);
      
    % assign index   
    Lip_C=1;
    HP=2;
    BP=3;
    BT=4;
    OR =5;
    IPS =6;
    SPE=7;
    LE =8;
    HM=9;
    EM=10;
    LC = 11;
    PSW = 12;
    PC = 13;
    PESO=14;
    TBR=15;
    PR = 16;
    EC =17;
     
     %BPM Frame Index (Bolus at Mandible)
     bpm_Frame = 18;
     oneHyoid_Frame=19;
     Bl_1hyoid = 20;
     Bl_lva = 21;
     lva_Frame = 22;
     le_Frame=23;
     ues_opening=24;
     ues_closure=25;
      %Maximum UES Openning
     UES_MAX_Frame = 26;
      % maximum pharyngeal constriction frame
     MPC_Frame = 27;
      % LVC_COMPLETE: A score that records the completeness after each
     % sub-swallow  
     lvc_complete = 28;
    
     lvc_offset=29;
     
       % Epiglottic Return Frame
     Epivert_Frame = 30;
     
          % first frame showing the pyriform sinuses at the lowest position
     First_Rest_Frame=31;
     
     % the frame showing the pyriform sinuses at the lowest position for
     % the final subswallow
     Final_Rest_Frame = 32;
     
     
      TempCompleteness = -1;
     % First Elevation of the larynx : record the frame containing first
     % ...laryngeal air column
     
     
   
     
     
     % location of bolus based on scale , always determined at frame #
     % marked 1hyoid, value should only be equal to 0,1,2,3,4
    
     
     %lva_frame maximal laryngeal approximation record the first frame
     %where there is maximum approximation of the arytenoids to the
     %laryngeal surface of the epiglottis
     
     
     % bolus location for lva frame
   
     
    
     
 
     
   
     

     
     % Multiple Draw Complete Monitor
     multiDraw = 0;
     
     % Reference Line list
     ref_Hlist = [];
      
     %region of interests lIST
     roi_Hlist = [];
      
   end
    
end

