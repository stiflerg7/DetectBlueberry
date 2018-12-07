function [ radii ] = DetectBlueberry( input_image )

A = imread(input_image);
imshow(A)
B = rgb2gray(A);
[centers, radii] = imfindcircles(B, [10 15], 'Method', 'TwoStage', 'EdgeThreshold', 0.1, 'Sensitivity', 0.955, 'ObjectPolarity', 'dark');
viscircles(centers, radii, 'EdgeColor', 'b')

end
