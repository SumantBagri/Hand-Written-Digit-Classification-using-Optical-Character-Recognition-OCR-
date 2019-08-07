% Read the image from an image file
I1 = imread("./digit_9/test (3).jpg");

% Image processing
I2 = imresize(I1,0.5);
I = rgb2gray(I2);
se = strel('disk', 20);

% Convert the image into negative
% This is to convert the black handwritten digit into white for further
% processing
J = imcomplement(I);
background = imopen(J,se);  
J2  = J - background;   % Removing the background from the image
BW1 = imbinarize(J2);
% Some more processing
marker = imerode(J2, strel('line',10,0));
Iclean = imreconstruct(marker, J2);
BW2 = imbinarize(Iclean);
imshowpair(I2,BW2, 'montage')
% Digit clasification using OCR (Optical Character Recognition)
results = ocr(BW2, 'CharacterSet', '0123456789', 'TextLayout', 'Block');
results.Text