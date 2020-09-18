function edges = edge_detector ( img , H , T , wndsz )
% Detect edges in an image .
%
% Inputs :
% img
% image being processed ( can be either greyscale or RGB )
% H
% the filtering kernel that approximates the horizontal
% derivative
% T [ optional ]
% the threshold value used by the edge detector ( default is
% 0.1)
% wndsz [ optional ]
% the size of the NMS filter window ( default is 5)
%
% Outputs :
% edges
% a binary image where a value of ’1 ’ indicates an image edge
img = im2double ( img );

% if ‘img ’ is a colour image , convert it to greyscale first
if size ( img ,3) > 1
    img = rgb2gray ( img );
end

% ‘ nargin ’ returns the number of input arguments so you can set
% arguments that have not been provided
if nargin == 2
    T = 0.1;
    wndsz = 5;
end
% TODO - Fill in with your processing code
img = spatial_filter(img, H);
img = non_max_suppress(img, 1, wndsz);
img = image_threshold(img, T);

edges = img;

end