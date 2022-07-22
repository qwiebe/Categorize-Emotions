function [start_index, end_index] = startEndIdx(datatable, offset, duration)
%     display(dataset)
    start_time = datatable{1,1} + offset;
    end_time = start_time + duration;

    idx = find(datatable{:,1} >= start_time & datatable{:,1} <= end_time);
    
    if size(idx, 1) == 0
        start_index = 0;
        end_index = 0;
        return;
    end

    start_index = idx(1);
    end_index = idx(end);
end