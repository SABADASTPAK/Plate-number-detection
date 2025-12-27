clc
% Read the image
imagePath = 'Number Plate Image2/image1.png';
img = imread(imagePath);
img=Plate_detection(img);
% % Convert the image to grayscale
% grayImg = rgb2gray(img);
% grayImg = 255 - grayImg;
% 
% % Apply thresholding to create a binary image
% binaryImg = grayImg > 128;
% 
% % remove small objects
% imagen = bwareaopen(binaryImg, 30);

% Perform connected component analysis
cc = bwconncomp(img);



% Extract bounding boxes of connected components
stats = regionprops(cc, 'BoundingBox','Area');

% Set a threshold for maximum area
maxAreaThreshold = 2000; % Setting the desired treshold

% Find indices of bounding boxes with areas exceeding the threshold
largeAreaIndices = find([stats.Area] > maxAreaThreshold);


% Display the original image
figure;
imshow(img);
hold on;

% Iterate through bounding boxes and draw rectangles (excluding large areas)
for i = 1:numel(stats)
    if ~ismember(i, largeAreaIndices)  % Exclude bounding boxes with large areas
        bb = stats(i).BoundingBox;
        rectangle('Position', bb, 'EdgeColor', 'r', 'LineWidth', 2);
    end
end

hold off;







noPlate=[];

% Extract and display text from each bounding box (excluding large areas)
for i = 1:numel(stats)
    if ~ismember(i, largeAreaIndices)  % Exclude bounding boxes with large areas
        bb = round(stats(i).BoundingBox);
        croppedImg = imcrop(img, bb);
        
     
    
        text = Letter_detection(croppedImg);
        noPlate=[noPlate text];
        
        
    end

end
noPlate


