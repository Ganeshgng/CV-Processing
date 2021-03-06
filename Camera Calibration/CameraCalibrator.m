% Define images to process
imageFileNames = {
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image1.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image2.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image3.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image4.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image5.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image6.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image7.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image8.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image9.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image10.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image11.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image12.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image13.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image14.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image15.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image16.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image17.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image18.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image19.jpg',...
    'F:\UNIVERSITY\4TH_SEM\3 EN2550 - Fundamentals of Image Processing and Machine Vision\Computer-Vision-and-Image-Processing\SINGLE VIEW GEOMETRY\Camera Calibration\phone-cam-images-20\image20.jpg',...
    };
% Detect checkerboards in images
[imagePoints, boardSize, imagesUsed] = detectCheckerboardPoints(imageFileNames);
imageFileNames = imageFileNames(imagesUsed);

% Read the first image to obtain image size
originalImage = imread(imageFileNames{1});
[mrows, ncols, ~] = size(originalImage);

% Generate world coordinates of the corners of the squares
squareSize = 30;  % in units of 'millimeters'
worldPoints = generateCheckerboardPoints(boardSize, squareSize);

% Calibrate the camera
[cameraParams, imagesUsed, estimationErrors] = estimateCameraParameters(imagePoints, worldPoints, ...
    'EstimateSkew', false, 'EstimateTangentialDistortion', false, ...
    'NumRadialDistortionCoefficients', 2, 'WorldUnits', 'millimeters', ...
    'InitialIntrinsicMatrix', [], 'InitialRadialDistortion', [], ...
    'ImageSize', [mrows, ncols]);

% View reprojection errors
h1=figure; showReprojectionErrors(cameraParams);

% Visualize pattern locations
h2=figure; showExtrinsics(cameraParams, 'CameraCentric');

% Display parameter estimation errors
displayErrors(estimationErrors, cameraParams);

% For example, you can use the calibration data to remove effects of lens distortion.
undistortedImage = undistortImage(originalImage, cameraParams);

% See additional examples of how to use the calibration data.  At the prompt type:
% showdemo('MeasuringPlanarObjectsExample')
% showdemo('StructureFromMotionExample')
