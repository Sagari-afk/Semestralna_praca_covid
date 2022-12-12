function [from,to] = time_limit(from,to)
date = readtable("OpenData_Slovakia_Covid_DailyStats.csv").Datum;
for i=1:length(date)
    if string(date(i)) == string(from)
        from = i;
    elseif string(date(i)) == string(to)
        to = i;
    end
end
end