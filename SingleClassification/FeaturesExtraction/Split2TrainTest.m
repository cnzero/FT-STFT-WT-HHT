% function description
% Input:
%     Sample, 1xn - Cell, every cell is a sample data of each label
%             Sample{1}, every row is a sample data.
%     p, percent that used to split samples into Training and Testing
%        pxL, Training
%        (1-p)xL, Testing

% Output:
%     SampleTraining, 1xn - Cell, every cell is a sample data of each label
%     SampleTesting, 


function [SampleTraining, SampleTesting] = Split2TrainTest(Sample, p)

    nLabel = length(Sample);
    
    for n=1:nLabel
        L = size(Sample{n}, 1);
        pL = floor(p*L);
        SampleTraining{n} = Sample{n}(1:pL, :);
        SampleTesting{n} = Sample{n}(pL+1:end, :);
    end