function [output] = GUIFileSelect()

[FileName,PathName,~] = uigetfile('*','Select an image file.','../imageinput/');
[output] = test(strcat(PathName,FileName),8); %Test is a temporary function/file and should be replaced with the final operation.

%csvwrite('data/mapCells.dat',output);
%csvwrite('data/mapEdges.dat',boundaries);

%output = jsonencode(output);
%boundaries = jsonencode(boundaries);

save('data/var','output');

end