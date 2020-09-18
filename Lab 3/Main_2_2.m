%Part 2.2
a = imread('Images/testing/contrast/7.2.01-small.png');
b = imread('Images/testing/contrast/207056.jpg');

figure(1);
imshow(histogram_equalize(a));
title('Histogram Equalize (1)');
saveas(gcf, 'Latex Images/Histogram_Equalize_1.png');

figure(2);
imshow(histogram_equalize(b));
title('Histogram Equalize (2)');
saveas(gcf, 'Latex Images/Histogram_Equalize_2.png');

figure(3);
imshow(adaptive_histogram(a, 100, 100));
title('Adaptive Equalize (1)');
saveas(gcf, 'Latex Images/Adpative_Equalize_1.png');

figure(4);
imshow(adaptive_histogram(b, 200, 200));
title('Adaptive Equalize (2)');
saveas(gcf, 'Latex Images/Adpative_Equalize_2.png');
%----------------------------------------

a = imread('Images/testing/sharpen/7.2.01-small.png');
b = imread('Images/testing/sharpen/digital_orca_blurred.png');

figure(5);
imshow(unsharp_mask(a, 5, 10));
title('Unsharp Mask (1)');
saveas(gcf, 'Latex Images/Unsharp_Mask_1.png');

figure(6);
imshow(unsharp_mask(b, 5, 5));
title('Unsharp Mask (2)');
saveas(gcf, 'Latex Images/Unsharp_Mask_2.png');

figure(7);
imshow(laplacian_sharpen(a, 8));
title('Laplacian Sharpen (1)');
saveas(gcf, 'Latex Images/Laplacian_Sharpen_1.png');

figure(8);
imshow(laplacian_sharpen(b, 20));
title('Laplacian Sharpen (2)');
saveas(gcf, 'Latex Images/Laplacian_Sharpen_2.png');
%---------------------------------------

a = imread('Images/testing/contrast/7.2.01-small.png');
b = imread('Images/testing/contrast/207056.jpg');

figure(9);
imshow(adaptive_histogram(a, 100, 100, 2500));
title('Adaptive Equalize CLAHE (1)');
saveas(gcf, 'Latex Images/Adaptive_Equalize_CLAHE_1.png');

figure(10);
imshow(adaptive_histogram(b, 200, 200, 1500));
title('Adaptive Equalize CLAHE (2)');
saveas(gcf, 'Latex Images/Adaptive_Equalize_CLAHE_2.png');




