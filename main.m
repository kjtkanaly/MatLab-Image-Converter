filePath    = "C:\Users\kkanaly\Documents\Convert Bin to JPEG\";
fileType    = ".bin";
file        = "salesman";

% For Non Bin Files
% img = imread(filePath + files(i) + fileType,'bin');
% img = img(:,:,1);

% For Bin Files
img = ReadBin(filePath + file + fileType, 256);
img = uint8(img);

imwrite(img, filePath + file + ".jpg");
output = imread(filePath + file + ".jpg");

figure
subplot(1,2,1)
imshow(img)

subplot(1,2,2)
colormap(gray(256));
imshow(output);