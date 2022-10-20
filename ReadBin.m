function [x] = ReadBin(fn,xsize)
    %
    % Open the file
    %
    fid = fopen(fn,'r');
    if (fid == -1)
        error(['Could not open ',fn]);
    end
    %
    % Read and close the file
    %
    [x,Nread] = fread(fid,[xsize,xsize],'uchar');
    if (Nread ~= xsize*xsize)
        error(['Complete read of ',fn,' did not succeed.']);
    end
    fclose(fid);
    %
    % Transpose data for matlab's 'row major' convention and return
    %
    x = x';
end