function out = histogram_equalize(img)
    out = img;
    total_count = size(img, 1) * size(img, 2);
    if ~(isa(img, 'uint8'))
        disp ('Invalid Type');
        out = 1;
    else
        for i = 0:255
            new_val = floor((length(img(img <= i))/total_count)*255);
            out(img==i) = new_val;
        end
    end
end