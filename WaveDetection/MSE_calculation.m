function MSE = MSE_calculation(raw, wname, maxlevel)
    
    MSE = [];
    for nl = 1:maxlevel
        wt_raw = modwt(raw, wname, nl);
        raw_d = wden(raw, 'minimaxi', 's', 'mln', nl, wname);
        wt_raw_d = modwt(raw_d, wname, nl);
        mse = mean(sum((wt_raw(1:nl, :) - wt_raw_d(1:nl, :)).^2, 2));
        MSE = [MSE, mse];
    end