function out = unsharp_mask(img, r, k)
    ind = (-r:r);
    [X Y] = meshgrid(ind, ind);
    sigma = r/3;
    h = exp(-(X.^2 + Y.^2) / (2*sigma*sigma)) / (2 * 3.14 * sigma.^2);
    h = h / sum(h(:));
    
    unsharp = img - spatial_filter(img, h);
    out = img + k*unsharp;
end