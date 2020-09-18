a = imread('a.png');

%Edges preserved, larger regions are smoothed
a_medians = median_filters(a);

imshow(a_medians);figure;

%Prominent Image Edges
h_h = [-1,0,1; -2,0,2; -1,0,1];
h_v = [1, 2, 1; 0,0,0; -1,-2,-1];
a_edges = threshold(edge_gradient(a, h_v, h_h), 0.15);
imshow(a_edges); figure;


out_cartoon = a_medians;
% Merge medians and edges
 for x = (1:size(a_edges, 1))
        for y =(1:size(a_edges, 2))
            if (a_edges(x,y) == 1)
                out_cartoon(x,y) = 0;
            end
        end
 end
 
 imshow(out_cartoon);