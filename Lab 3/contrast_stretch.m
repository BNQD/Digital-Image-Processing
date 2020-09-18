function output_img = contrast_stretch (input_img)
    input_img = double(input_img);

    min_val = min(min(input_img));
    max_val = max(max(input_img));
    
    temp =  255 * (input_img * (1 / (max_val - min_val)) - (min_val / (max_val - min_val)));
    
    output_img = uint8(temp);
end
