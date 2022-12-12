function [x_horsi,range_horsi,x_lepsi,range_lepsi] = casovy_segment(data, value, dni)

value = rmmissing(value);
date = data.Datum(isnat(data.Datum)==false);
value(isnan(value))=0;
x_horsi = value(2);
x_lepsi = x_horsi;
range_lepsi = date(1):date(dni);

for i=1:(size(data,1)-dni)
    pocet = 0;
    for j=1:dni
        k = j+i-1;
        if k>length(value)
            break
        end
        pocet = pocet + value(k);
    end
    range = date(i):date(k);
    if pocet > x_horsi
        x_horsi = pocet;
        range_horsi = range;
    elseif pocet < x_lepsi && pocet ~=0
        x_lepsi = pocet;
        range_lepsi = range;
    end
end
[from,to] = time_limit(range_horsi(1),range_horsi(end));
plot(range_horsi,value(from:to),":");
end