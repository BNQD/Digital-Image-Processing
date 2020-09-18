%Main
a = imread('a.png');
figure(1);
imshow(a);
title('Original Image');
%2.1.1 Question 1
figure(2);
imshow(histogram_equalize(a));
title('Histogram Equalized Image');
figure(3);
imhist(histogram_equalize(a));
title('Histogram of Equalized Image');

%2.1.1 Question 2
figure(4);
imshow(adaptive_histogram(a, 50, 50));

%2.1.1 Question 3
figure(5);
imshow(unsharp_mask(a), 5, 1);

%2.1.1 Question 4
figure(6);
imshow(laplacian_sharpen(a, 10));
