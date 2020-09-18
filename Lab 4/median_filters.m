function out = median_filters (img)
    out = medfilt2(img, [4, 4]);
    out = medfilt2(out, [3, 3]);
    out = medfilt2(out, [2, 2]);
end