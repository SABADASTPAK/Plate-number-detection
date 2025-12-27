
function plate= Plate_detection(img)

imgray = rgb2gray(img);
imbin = imbinarize(imgray);
img = edge(imgray, 'prewitt');
figure;
imshow(img)
hold on

%Below steps are to find location of number plate
Iprops = regionprops(img, 'BoundingBox', 'Area', 'Image');
area = Iprops.Area;
count = numel(Iprops);
maxa = area;
boundingBox = Iprops.BoundingBox;
    for i = 1:count
    if maxa < Iprops(i).Area
        maxa = Iprops(i).Area;
        boundingBox = Iprops(i).BoundingBox;
    end
    end

img = imcrop(imbin, boundingBox);
plate = bwareaopen(~img, 500);
 [h, w] = size(img);

%   imshow(plate);
end

% Iprops=regionprops(im,'BoundingBox','Area', 'Image');
% count = numel(Iprops);
% noPlate=[];
% for i=1:count
%    ow = length(Iprops(i).Image(1,:));
%    oh = length(Iprops(i).Image(:,1));
%    if ow<(h/2) && oh>(h/3)
%        letter=Letter_detection(Iprops(i).Image);
%        noPlate=[noPlate letter]
%    end
% end
