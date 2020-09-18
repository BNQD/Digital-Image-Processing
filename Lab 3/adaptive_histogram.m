function out = adaptive_histogram(img, H, W, cutoff)
    out = img;
    img_height = size(img, 1);
    img_width = size(img, 2);
    for h_window = 1:H:img_height
        for w_window = 1:W:img_width
            if ((h_window + H - 1) > img_height)
                temp_H = img_height-h_window;
            else
                temp_H = H;
            end
            if ((w_window+H-1) > img_width)
               temp_W = img_width-w_window; 
            else
               temp_W = W;
            end
            out(h_window:h_window+temp_H-1, w_window:w_window+temp_W-1)= histogram_equalize(img(h_window:h_window+temp_H-1, w_window:w_window+temp_W-1));
        end
    end
    before_cutoff = out;
    if nargin == 4
        if cutoff < (img_height * img_width / 255)
            disp ('invalid cutoff');
        else
            for pixel_val = 0:255
               count_pixels = length(before_cutoff(before_cutoff==pixel_val));
               if (count_pixels > cutoff)
                   mask = (before_cutoff==pixel_val);
                   for replace_count = 0:count_pixels-cutoff
                       ind = find(mask, 1, 'first');
                       mask(ind) = 0;
                       out(ind) = round(rand(1)*255);
                   end
               end
            end
        end
    end
end


