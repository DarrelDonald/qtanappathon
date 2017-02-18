function [output,boundaries] = test(inputImage)
%eliminates blue elements in the image
output = eliminateblue(inputImage); 

%make the image more "blocky"
output = blockify(output);
%turn up the contrast; we want a binary-only image
output = contrastMax(output);

imshow(output);

output = blockify(output);

boundaries = bwboundaries(output,8,'holes');
end