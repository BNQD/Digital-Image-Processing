additive = imread ('Images/enhance/noise_additive.png');
impulsive = imread ('Images/enhance/noise_impulsive.png');
multiplicative = imread ('Images/enhance/noise_multiplicative.png');

snowglobe = imread ('Images/enhance/snowglobe.png');


h = [[1,4,7,4,1]; [4, 20, 33, 20, 4]; [7, 33, 55, 33, 7]; [4, 20, 33, 20, 4]; [1,4,7,4,1]]/331;
a = spatial_filter(additive,h);
a = histogram_equalize(a);
figure(1);
imshow(a);

b = median_filter(impulsive);
b = unsharp_mask(b, 4, 2);
b = histogram_equalize(b);
figure(2);
imshow(b);

c = spatial_filter(multiplicative, h);
c = unsharp_mask(c, 4, 2);
figure(3);
imshow(c);


d = contrast_stretch(snowglobe+100);
d = unsharp_mask(d, 4, 2);
d = median_filter(d);
figure(4);
imshow(d);

