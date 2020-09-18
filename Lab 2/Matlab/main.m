%Question 1
a = imread ("Lenna.png");
a = rgb2gray(a);
h = [[-1, -1, -1];[0,0,0];[1,1,1]]

figure(1);
title ("Spatial Filter");
imshow (spatial_filter(a, h));

%Question 2
a = imread("nms-test.png");
figure(2);
title("Non Max Suppression");
imshow(non_max_suppress(a, 5, 1))

%Question 3
a = imread("threshold-test.png");
figure(3);
title ("Threshold");
imshow(image_threshold(a, 0.75));

%Question 4
a = imread ("Lenna.png");
a = rgb2gray(a);
h = [[1,4,7,4,1]; [4, 20, 33, 20, 4]; [7, 33, 55, 33, 7]; [4, 20, 33, 20, 4]; [1,4,7,4,1]]/331;
figure (4);
title ("Gaussian Blur");
imshow(cast(spatial_filter(a, h), 'uint8'));
figure (5);
imshow(a);

%Edge Detector
h = [[-1, -1, -1];[0,0,0];[1,1,1]];
figure(6);
imshow(edge_detector(a, h, auto_threshold(a), 5))
a = imread('test.jpg');
figure(7);
imshow(edge_detector(a, h, auto_threshold(a), 5))


