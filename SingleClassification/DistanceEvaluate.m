% function discriptions
% Input:
% Output:

function Accuracy = DistanceEvaluate(Sample, ReductM, centers)

    nLabel = length(Sample);
    Accuracy = zeros(nLabel, 2);
    % L, accuracy
    % L -- number of testing samples
    % accuracy -- positive double value
    for n=1:nLabel
        L = size(Sample{n},1);
        nRight = 0; % number of Right classification samples.
        for s=1:L
            data = Sample{n}(s, :);
            data_reduction = data * ReductM;
            nRow = DistanceRow(data_reduction, centers);
            nRight = nRight + (nRow==n);
        end
        Accuracy(n,:) = [L, nRight/L];
    end