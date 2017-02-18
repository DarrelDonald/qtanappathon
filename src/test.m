function [output] = test(inputImage,scale)
%eliminates blue elements in the image
output = eliminateblue(inputImage); 

%make the image more "blocky"
output = blockify(output,scale);
%turn up the contrast; we want a binary-only image
output = contrastMax(output);
csvwrite('mapCells.dat',output);
imshow(output);

edgemask = blockEdges(output,scale);

getMapCells(output,scale);

getCoastCells(edgemask,scale);

input('wait');

imshow(edgemask);

end