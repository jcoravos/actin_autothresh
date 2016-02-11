%% Batch Actin Thresholding
%This script uses the actinthresholding package and runs it on multiple
%images for multiple threshold levels.

%% Grabbing filenames for batch operationg
filestruct = dir('/Users/Jonathan/Desktop/ActinThresholding');
l = length(filestruct);
dir0 = '/Users/Jonathan/Desktop/ActinThresholding'

for i = 4:l
    source_filename{i} = filestruct(i).name
    dir1{i} = strcat(dir0,'/',source_filename{i},'/')
end

%% Thresholding computation
for i = 4:l
    for p = 99
        data{i} = Masteractinthresh(dir0, dir1{i}, source_filename{i},p)
    end
end
    