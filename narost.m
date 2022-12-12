function [max_narost,min_narost] = narost(data, value, from, to)
[from,to] = time_limit(from,to);
[value,~] = base(data, value, from, to);

derivacia = diff(value);

max_narost = value(find(derivacia==max(derivacia)));
min_narost = value(find(derivacia==min(derivacia)));
end