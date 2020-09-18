function out = laplacian_sharpen(img, k)
    img_double = im2double(img);
    laplacian = gradient(gradient(img_double));
    out = img + uint8(round(k*laplacian*255));
end