function out = extended_dog (in_img, r, sigma, p, k)
    img = rescale(in_img);
    ind = (-r:r);
    [X, Y] = meshgrid(ind, ind);
    h = exp(-(X.^2 + Y.^2) / (2*sigma*sigma)) / (2 * 3.14 * sigma.^2);
    h = h / sum(h(:));
    gaussian_blurred_1 = spatial_filter(img, h);
    
    sigma = sigma * k;
    h = exp(-(X.^2 + Y.^2) / (2*sigma*sigma)) / (2 * 3.14 * sigma.^2);
    h = h / sum(h(:));
    gaussian_blurred_2 = spatial_filter(img, h);
    
    
    out = floor((1 + p) * gaussian_blurred_1 - p * gaussian_blurred_2)*255;
    out = in_img - cast(out, 'uint8');
end