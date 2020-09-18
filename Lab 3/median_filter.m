function out = median_filter (img)
    out = img;
    x = size(img, 1);
    y = size(img, 2);
    for i = 2:((x*y)-3)
        out(i) = median(img(i-1:i+1));
    end
    
end