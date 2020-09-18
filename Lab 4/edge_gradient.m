function out = edge_gradient(img, vert_filt, hor_filt) 
    doub_img = im2double(img);
    vert_edges = spatial_filter(doub_img, vert_filt);
    hor_edges  = spatial_filter(doub_img, hor_filt);
    
    out = sqrt(vert_edges.^2 + hor_edges.^2);
end