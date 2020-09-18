function out = threshold(img, threshold)
    out = img;
    out = rescale(img);
    for x = (1:size(img, 1))
        for y =(1:size(img, 2))
            if (out(x, y) > threshold)
               out(x, y) = 1; 
            else
                out(x, y) = 0;
            end
        end
    end
end