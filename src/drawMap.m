%%%Made in Matlab by Darien Sokolov for the Arcanity group for the Spring Appathon, 2017
%%%Group Members:  Sarah Austin, Darrel Donald, Darien Sokolov, Verneri Thomason

function mapImage = drawMap(backgroundImage)
close;
img = imread(backgroundImage);

%RGB = insertMarker(img,[100 100]);

imagesc(0,100,img);
hold on;
imagesc(200,200,img);

%pos = [120 248;195 246; 195 312;120 312];
%color = {'red','white','green','magenta'};
%RGB = insertMarker(RGB,pos,'x','color',color,'size',10);
%imshow(RGB);
end