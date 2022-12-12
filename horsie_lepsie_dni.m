function [horsy,lepsy] = horsie_lepsie_dni(data, value, from, to)
[from,to] = time_limit(from,to);
value_x = base(data, value, from, to);
horsy = max(value_x);
lepsy = min(value_x);

horsy = data.Datum(find(value==horsy));
lepsy = data.Datum(find(value==lepsy));
end