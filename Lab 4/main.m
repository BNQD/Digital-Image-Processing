a = imread("a.png");
figure(1);
temp = extended_dog(a, 3, 0.9, 100, 1.225);
imshow(temp);
title ("xdog");

figure(2);
imshow(threshold_phi(temp ,0.5, 5));
title("threshold");