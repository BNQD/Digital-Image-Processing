function out = derivative_kernel (img, mode)
    %Takes inputs (img, mode)
    %Mode is specified as one of the following
    %C for "Central Difference", F for "Forward Difference", P for "Prewitt", S for "Sobel"
    
    if (mode == "C")
        h = [1, 0, -1];
    elseif (mode == "F")
        h = [0, 1, -1];    
    elseif (mode == "P")
        h = [[1, 0, -1]; [1, 0, -1]; [1, 0, -1]];
    elseif (mode == "S")
        h = [[1, 0, -1]; [2, 0, -2]; [1, 0, -1]];
    end
    
    out = conv2(img, h);

end