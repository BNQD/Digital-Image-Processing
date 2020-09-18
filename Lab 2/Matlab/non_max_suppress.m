function out = non_max_suppress(img, H, W)
    new_w = (W-1)/2;
    new_h = (H-1)/2;
    pad_img = padarray(img, [new_w, new_h], 'both');
    out = img;
    for x = (1:size(img, 1))
        for y =(1:size(img, 2))
            max_val = max(max(pad_img(x:x+W-1, y:y+H-1)));
            if (img(x, y) ~= max_val)
                out(x, y) = 0;
            else
                continue;
            end
        end
    end
end

