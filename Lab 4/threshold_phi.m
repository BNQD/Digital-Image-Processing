function out = threshold_phi(img, threshold, phi)
    out = img;
    out = rescale(img);
    for x = (1:size(img, 1))
        for y =(1:size(img, 2))
            if (out(x, y) > threshold)
               out(x, y) = 1; 
            else
                out(x, y) = tanh(phi * (out(x, y) - threshold));
            end
        end
    end
end