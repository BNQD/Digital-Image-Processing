function output = auto_threshold(img)
    [gm, gd] = imgradient(img);
    output = sum(sum(gm))/(size(gm, 1) * size(gm, 2))/255
end