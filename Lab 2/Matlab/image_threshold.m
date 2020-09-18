function out = image_threshold (img, T)
    out = img;
    scaled = rescale(img);
    for x = (1:size(img, 1))
        for y =(1:size(img, 2))
            if (scaled(x, y) <= T)
                out(x, y) = 0;
            else
                out(x,y) = 255;
            end
        end
    end
end