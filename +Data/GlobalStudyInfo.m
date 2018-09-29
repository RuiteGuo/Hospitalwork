classdef GlobalStudyInfo < handle
   properties
      %These are all classes I made
      vfVideoStructure;
      studyImageProcessingInfo;
      studyCoordinates;
      
      %Kinematic Frame Numbers
      hold_position;
      ramus_mandible;
      hyoid_burst;
      ues_closure;
      at_rest;
      start_frame;
      end_frame;
      lvc_onset;
      lvc_offset;
      laryngeal_jump;
      ues_opening;
      
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
      subswallowFrameIndex1 = zeros(2,1);
      subswallowFrameIndex2 = zeros(2,1);
      subswallowFrameIndex3 = zeros(2,1);
      
     % LVC_COMPLETE: A score that records the completeness after each
     % sub-swallows
     
     LVC_COMPLETE_SCORE = zeros(3,1);
     TempCompleteness = 0;
     
     %BPM Frame Index (Bolus at Mandible)
     bpm_Frame = 0;
     
     % First Elevation of the larynx : record the frame containing first
     % ...laryngeal air column
     le_Frame=0;
     
     % First evidence of Hyoid burst 1hoid
     oneHyoid_Frame=0;
     
     % location of bolus based on scale , always determined at frame #
     % marked 1hyoid, value should only be equal to 0,1,2,3,4
     Bl_1hyoid = -1;
     
     %lva_frame maximal laryngeal approximation record the first frame
     %where there is maximum approximation of the arytenoids to the
     %laryngeal surface of the epiglottis
     lva_Frame = -1;
     
     % bolus location for lva frame
     Bl_lva = -1;
     
     % maximum pharyngeal constriction frame
     MPC_Frame = -1;
     
     %Maximum UES Openning
     UES_MAX_Frame = -1;
     
     % Epiglottic Return Frame
     Epivert_Frame = -1;
     
     % first frame showing the pyriform sinuses at the lowest position
     First_Rest_Frame=-1;
     
     % the frame showing the pyriform sinuses at the lowest position for
     % the final subswallow
     Final_Rest_Frame = -1;
     
     % Multiple Draw Complete Monitor
     multiDraw = 0;
     
     % Reference Line list
     ref_Hlist = [];
      
     %region of interests lIST
     roi_Hlist = [];
      
   end
    
end